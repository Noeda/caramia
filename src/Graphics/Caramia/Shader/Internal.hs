{-# LANGUAGE ViewPatterns, NoImplicitPrelude, DeriveDataTypeable #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Graphics.Caramia.Shader.Internal where

import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.OpenGLResource
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource

-- | A shader object for a specific shader stage.
--
-- OpenGL equivalent is the shader object.
data Shader = Shader
    { resource     :: !(Resource Shader_)
    , viewStage    :: !ShaderStage
    -- ^ Which stage does this shader belong to.
    , identifier   :: !Unique
    }
    deriving ( Typeable )

instance OpenGLResource GLuint Shader where
    getRaw shader = do
        CompiledShader name <- getRaw (WrappedOpenGLResource $ resource shader)
        return name
    touch shader = touch (WrappedOpenGLResource $ resource shader)
    finalize shader = finalize (WrappedOpenGLResource $ resource shader)

instance Eq Shader where
    (resource -> res1) == (resource -> res2) = res1 == res2

-- | The ordering has no inherent meaning but it allows shaders to be stored
-- correctly in containers that have `Ord` constraint.
instance Ord Shader where
    (identifier -> id1) `compare` (identifier -> id2) = id1 `compare` id2

newtype Shader_ = CompiledShader GLuint   -- OpenGL shader

-- | A pipeline object that references a collection of shaders.
--
-- OpenGL equivalent is the shader program object.
data Pipeline = Pipeline
    { resourcePL :: !(Resource Pipeline_)
    , pipelineIdentifier :: !Unique
    , shaders :: [Shader] }
    deriving ( Typeable )

-- | Despite the Haskell name, `Pipeline`, the object is a shader program
-- object.
instance OpenGLResource GLuint Pipeline where
    getRaw program = do
        Pipeline_ name <- getRaw (WrappedOpenGLResource $ resourcePL program)
        return name
    touch program = touch (WrappedOpenGLResource $ resourcePL program)
    finalize program = finalize (WrappedOpenGLResource $ resourcePL program)

instance Eq Pipeline where
    p1 == p2 = resourcePL p1 == resourcePL p2

instance Ord Pipeline where
    p1 `compare` p2 = pipelineIdentifier p1 `compare` pipelineIdentifier p2

newtype Pipeline_ = Pipeline_ GLuint

data ShaderStage =
    Vertex
  | Fragment
  | Geometry
  deriving ( Eq, Ord, Show, Read )

