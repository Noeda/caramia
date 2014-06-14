module Caramia.Shader.Internal
    ( Shader(..)
    , Pipeline(..)
    , Pipeline_(..)
    , Shader_(..)
    , ShaderStage(..)
    , shaderIdentifierSupply )
    where

import Caramia.Prelude

import Caramia.Resource
import System.IO.Unsafe
import Caramia.Internal.OpenGLCApi

-- | A shader object for a specific shader stage.
--
-- OpenGL equivalent is the shader object.
data Shader = Shader
    { resource     :: !(Resource Shader_)
    , viewStage    :: !ShaderStage
    -- ^ Which stage does this shader belong to.
    , identifier   :: !Int
    }
    deriving ( Typeable )

instance Eq Shader where
    (resource -> res1) == (resource -> res2) = res1 == res2

-- | The ordering has no inherent meaning but it allows shaders to be stored
-- correctly in containers that have `Ord` constraint.
instance Ord Shader where
    (identifier -> id1) `compare` (identifier -> id2) = id1 `compare` id2

data Shader_ = CompiledShader !GLuint   -- OpenGL shader

-- | A pipeline object that references a collection of shaders.
--
-- OpenGL equivalent is the shader program object.
data Pipeline = Pipeline
    { resourcePL :: !(Resource Pipeline_)
    , pipelineIdentifier :: !Int
    , shaders :: [Shader] }
    deriving ( Typeable )

instance Eq Pipeline where
    p1 == p2 = resourcePL p1 == resourcePL p2

instance Ord Pipeline where
    p1 `compare` p2 = pipelineIdentifier p1 `compare` pipelineIdentifier p2

newtype Pipeline_ = Pipeline_ GLuint

shaderIdentifierSupply :: IORef Int
shaderIdentifierSupply = unsafePerformIO $ newIORef 0
{-# NOINLINE shaderIdentifierSupply #-}

data ShaderStage =
    Vertex
  | Fragment
  | Geometry
  deriving ( Eq, Ord, Show, Read )

