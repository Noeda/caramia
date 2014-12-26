-- | Queries.
--
-- Queries have some distinct use cases; you can use them to determine if some
-- object is occluded or you can measure how long GPU takes to execute some
-- commands.
--
-- <https://www.opengl.org/wiki/Query_Object>
--
-- Most features in this module require either OpenGL 3.3 or an extension.
--

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE RankNTypes #-}

module Graphics.Caramia.Query
    (
    -- * Main query operations
      withNumericQuery
    , withNumericQuery'
    , withBooleanQuery
    , withBooleanQuery'
    -- ** Creating queries manually
    , newNumericQuery
    , newBooleanQuery
    , beginQuery
    , endQuery
    -- * Retrieving query results
    , getResults
    , tryGetResults
    -- * Query types
    , NumericQueryType(..)
    , BooleanQueryType(..)
    -- * Types
    , Query()
    , QueryResultType() )
    where

import Control.Monad.Catch
import Control.Monad.IO.Class
import qualified Data.Map.Strict as M
import qualified Data.Set as S
import Data.Unique
import Foreign.Marshal.Alloc
import Foreign.Storable
import Graphics.Caramia.Internal.ContextLocalData
import Graphics.Caramia.Internal.Exception
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import Graphics.GL.Ext.ARB.OcclusionQuery
import Graphics.GL.Ext.ARB.OcclusionQuery2
import Graphics.GL.Ext.ARB.TimerQuery

-- | What kind of query to make? These queries return integer results.
data NumericQueryType
    = SamplesPassed
    | PrimitivesGenerated
    | TransformFeedbackPrimitivesWritten
    | TimeElapsed  -- | Requires OpenGL 3.3 or @ GL_ARB_timer_query @.
    deriving ( Eq, Ord, Show, Read, Typeable, Enum )

-- | What of query to make? These queries return boolean results.
data BooleanQueryType
    = AnySamplesPassed   -- ^ If @ GL_ARB_occlusion_query2 @ or OpenGL 3.3 is
                         --   not available, this is implemented with
                         --   `SamplesPassed` behind the scenes.
    deriving ( Eq, Ord, Show, Read, Typeable, Enum )

-- | Which queries cannot be used together?
illPairs :: M.Map SomeQuery (S.Set SomeQuery)
illPairs = M.fromList
    [ (Left SamplesPassed, S.singleton $ Right AnySamplesPassed)
    , (Right AnySamplesPassed, S.singleton $ Left SamplesPassed) ]

type SomeQuery = Either NumericQueryType BooleanQueryType

-- | A query object. The type variable tells the type of the return values from
-- the query.
data Query a = Query
    { resource :: !(Resource Query_)
    , ordIndex :: !Unique
    , queryType :: !SomeQuery
    , isActive :: !(IORef Bool) }
    deriving ( Typeable )

newtype Query_ = Query_ GLuint

instance Eq (Query a) where
    o1 == o2 = ordIndex o1 == ordIndex o2

instance Ord (Query a) where
    o1 `compare` o2 = ordIndex o1 `compare` ordIndex o2

class QueryResultType a where
    fromInt64 :: Int64 -> a

instance QueryResultType Int64 where
    fromInt64 = id

instance QueryResultType Bool where
    fromInt64 0 = False
    fromInt64 _ = True

numericQueryTypeToConstant :: NumericQueryType -> GLenum
numericQueryTypeToConstant SamplesPassed = GL_SAMPLES_PASSED
numericQueryTypeToConstant PrimitivesGenerated = GL_PRIMITIVES_GENERATED
numericQueryTypeToConstant TransformFeedbackPrimitivesWritten = GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
numericQueryTypeToConstant TimeElapsed = GL_TIME_ELAPSED

booleanQueryTypeToConstant :: BooleanQueryType -> GLenum
booleanQueryTypeToConstant AnySamplesPassed = GL_ANY_SAMPLES_PASSED

eitherQueryTypeToConstant :: SomeQuery -> GLenum
eitherQueryTypeToConstant (Left qt) = numericQueryTypeToConstant qt
eitherQueryTypeToConstant (Right qt) = booleanQueryTypeToConstant qt

-- | Creates a query, runs some actions in it and then returns an
-- `Query` value.
--
-- There can be only one active query for each query type. An user error will
-- be thrown if this is violated.
--
-- `AnySamplesPassed` cannot be used at the same time as `SamplesPassed`.
--
-- You can query the returned `Query` for results. However, because using the
-- GPU is typically asynchronous, results may not be (and often are not)
-- immediately available. Use `tryGetResults` to check if results have become
-- available.
withNumericQuery :: (MonadIO m, MonadMask m)
                 => NumericQueryType
                 -> m a
                 -> m (Query Int64, a)
withNumericQuery querytype action = mask $ \restore ->
    newNumericQuery querytype >>= withQuery restore action

-- | Same as `withNumericQuery` but throws away the result of the action
-- itself.
withNumericQuery' :: (MonadIO m, MonadMask m)
                  => NumericQueryType
                  -> m a
                  -> m (Query Int64)
withNumericQuery' qt action = do
    (x, _) <- withNumericQuery qt action
    return x

-- | Same as `withNumericQuery`, but uses boolean queries, whose results is
-- either `True` or `False`.
withBooleanQuery :: (MonadIO m, MonadMask m)
                 => BooleanQueryType
                 -> m a
                 -> m (Query Bool, a)
withBooleanQuery querytype action = mask $ \restore ->
    newBooleanQuery querytype >>= withQuery restore action

-- | Same as `withBooleanQuery` but throws away the result of the action
-- itself.
withBooleanQuery' :: (MonadIO m, MonadMask m)
                  => BooleanQueryType
                  -> m a
                  -> m (Query Bool)
withBooleanQuery' qt action = do
    (x, _) <- withBooleanQuery qt action
    return x

withQuery :: (MonadIO m, MonadMask m)
          => (forall a. m a -> m a)
          -> m c
          -> Query b
          -> m (Query b, c)
withQuery restore action query = do
    beginQuery query
    result <- finally (restore action) (endQuery query)
    return (query, result)

-- we track which query objects are active in a value of this type, in a
-- context-local value so we only have one of these per context.
newtype ActiveQueries = ActiveQueries (IORef (M.Map SomeQuery Unique))
                        deriving ( Typeable )

getActiveQueries :: IO (IORef (M.Map SomeQuery Unique))
getActiveQueries = do
    ActiveQueries ref <- retrieveContextLocalData $
                         ActiveQueries <$> newIORef M.empty
    return ref

removeQuery :: SomeQuery -> Unique -> IO ()
removeQuery qt key = do
    ref <- getActiveQueries
    atomicModifyIORef' ref $ \old ->
        ( case M.lookup qt old of
              Just x | x == key -> M.delete qt old
              _ -> old
        , () )

prettyShow :: SomeQuery -> String
prettyShow (Left x) = show x
prettyShow (Right x) = show x

addQuery :: SomeQuery -> Unique -> IO ()
addQuery qt key = do
    ref <- getActiveQueries
    -- we do this outside atomicModifyIORef' so that error is not put inside
    -- the IORef
    old <- readIORef ref
    case M.lookup qt old of
        Just _ ->
            error $ "addQuery: attempted to have two queries of " <>
                    "the same type active at once."
        _ -> return ()
    case M.lookup qt illPairs of
        Just x | Just y <- find (flip M.member old) x ->
            error $ "addQuery: cannot use " <> prettyShow qt <>
                    " with " <> prettyShow y <> " at the same time."
        _ -> return ()
    atomicModifyIORef' ref $ \old -> ( M.insert qt key old, () )

-- | Creates a new query object, that returns a numeric type.
--
-- Use `beginQuery` and `endQuery` to decide which part of GPU commands you
-- want the query to be about.
--
-- You may want to use `withNumericQuery` instead, which begins and ends
-- the query for you.
newNumericQuery :: MonadIO m => NumericQueryType -> m (Query Int64)
newNumericQuery = newQuery . Left

-- | Same as `newNumericQuery` but for boolean queries.
newBooleanQuery :: MonadIO m => BooleanQueryType -> m (Query Bool)
newBooleanQuery = newQuery . Right

-- | Creates a new query.
--
-- NOT PUBLIC API. Does not check or care what the query result type is.
newQuery :: MonadIO m
         => SomeQuery
         -> m (Query a)
newQuery qt' =
    liftIO $ mask_ $ do
        qt <- case qt' of
            Left SamplesPassed -> return qt'
            Left TimeElapsed ->
                checkOpenGLOrExtensionM (OpenGLVersion 3 3)
                                        "GL_ARB_timer_query"
                                        gl_ARB_timer_query $ return qt'
            Left _ -> checkExtensionM "GL_ARB_occlusion_query"
                                      gl_ARB_occlusion_query $ return qt'
            Right AnySamplesPassed
                | openGLVersion < OpenGLVersion 3 3 &&
                  not gl_ARB_occlusion_query2 -> return (Left SamplesPassed)
                | otherwise -> return qt'

        unique <- newUnique
        resource <- newResource (Query_ <$> mglGenQuery)
                                (\(Query_ queryname) -> do
                                    removeQuery qt unique
                                    mglDeleteQuery queryname)
                                (return ())
        ref <- newIORef False
        return $ Query { resource = resource
                       , ordIndex = unique
                       , isActive = ref
                       , queryType = qt }

-- | Begins a query. A query can only be started once.
beginQuery :: MonadIO m => Query a -> m ()
beginQuery qt = liftIO $ mask_ $ do
    is_active <- readIORef (isActive qt)
    when is_active $ error "beginQuery: query object is active already."
    withResource (resource qt) $ \(Query_ queryname) -> do
        writeIORef (isActive qt) True
        addQuery (queryType qt) (ordIndex qt)
        glBeginQuery (eitherQueryTypeToConstant $ queryType qt)
                     queryname

-- | Ends a query.
endQuery :: MonadIO m => Query a -> m ()
endQuery qt = liftIO $ mask_ $ do
    is_active <- readIORef (isActive qt)
    unless is_active $ error "endQuery: query object was not active."
    withResource (resource qt) $ \_ -> do
        -- curiously the query object itself is not actually used directly
        writeIORef (isActive qt) False
        glEndQuery (eitherQueryTypeToConstant $ queryType qt)
        removeQuery (queryType qt) (ordIndex qt)

-- | Returns results if they are available or `Nothing`.
tryGetResults :: (MonadIO m, QueryResultType a)
              => Query a
              -> m (Maybe a)
tryGetResults (Query { resource = resource }) =
    liftIO $ withResource resource $ \(Query_ queryname) -> do
        is_it_available <- alloca $ \av -> do
            glGetQueryObjectiv queryname GL_QUERY_RESULT_AVAILABLE av
            peek av
        if is_it_available == GL_FALSE
          then return Nothing
          else fmap Just $ actuallyGetResults queryname

-- | Returnts query results, blocks if it has to wait for results.
--
-- Note: cannot be interrupted by asynchronous exceptions if it decides to
-- wait.
getResults :: (MonadIO m, QueryResultType a) => Query a -> m a
getResults (Query { resource = resource }) =
    liftIO $ withResource resource $ \(Query_ queryname) ->
        actuallyGetResults queryname

actuallyGetResults :: QueryResultType a => GLuint -> IO a
actuallyGetResults queryname = do
    result <- alloca $ \v64 -> do
        glGetQueryObjecti64v queryname GL_QUERY_RESULT v64
        peek v64
    return $ fromInt64 result

