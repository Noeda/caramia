-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV (
	-- * NV Extensions
	  module Graphics.OpenGL.Extension.NV.BindlessMultiDrawIndirect
	, module Graphics.OpenGL.Extension.NV.BindlessMultiDrawIndirectCount
	, module Graphics.OpenGL.Extension.NV.BindlessTexture
	, module Graphics.OpenGL.Extension.NV.BlendEquationAdvanced
	, module Graphics.OpenGL.Extension.NV.BlendEquationAdvancedCoherent
	, module Graphics.OpenGL.Extension.NV.BlendSquare
	, module Graphics.OpenGL.Extension.NV.ComputeProgram5
	, module Graphics.OpenGL.Extension.NV.ConditionalRender
	, module Graphics.OpenGL.Extension.NV.ConservativeRaster
	, module Graphics.OpenGL.Extension.NV.CopyBuffer
	, module Graphics.OpenGL.Extension.NV.CopyDepthToColor
	, module Graphics.OpenGL.Extension.NV.CopyImage
	, module Graphics.OpenGL.Extension.NV.CoverageSample
	, module Graphics.OpenGL.Extension.NV.DeepTexture3D
	, module Graphics.OpenGL.Extension.NV.DepthBufferFloat
	, module Graphics.OpenGL.Extension.NV.DepthClamp
	, module Graphics.OpenGL.Extension.NV.DepthNonlinear
	, module Graphics.OpenGL.Extension.NV.DrawBuffers
	, module Graphics.OpenGL.Extension.NV.DrawInstanced
	, module Graphics.OpenGL.Extension.NV.DrawTexture
	, module Graphics.OpenGL.Extension.NV.Evaluators
	, module Graphics.OpenGL.Extension.NV.ExplicitAttribLocation
	, module Graphics.OpenGL.Extension.NV.ExplicitMultisample
	, module Graphics.OpenGL.Extension.NV.FboColorAttachments
	, module Graphics.OpenGL.Extension.NV.Fence
	, module Graphics.OpenGL.Extension.NV.FillRectangle
	, module Graphics.OpenGL.Extension.NV.FloatBuffer
	, module Graphics.OpenGL.Extension.NV.FogDistance
	, module Graphics.OpenGL.Extension.NV.FragmentCoverageToColor
	, module Graphics.OpenGL.Extension.NV.FragmentProgram
	, module Graphics.OpenGL.Extension.NV.FragmentProgram2
	, module Graphics.OpenGL.Extension.NV.FragmentProgram4
	, module Graphics.OpenGL.Extension.NV.FragmentProgramOption
	, module Graphics.OpenGL.Extension.NV.FragmentShaderInterlock
	, module Graphics.OpenGL.Extension.NV.FramebufferBlit
	, module Graphics.OpenGL.Extension.NV.FramebufferMixedSamples
	, module Graphics.OpenGL.Extension.NV.FramebufferMultisample
	, module Graphics.OpenGL.Extension.NV.FramebufferMultisampleCoverage
	, module Graphics.OpenGL.Extension.NV.GenerateMipmapSRGB
	, module Graphics.OpenGL.Extension.NV.GeometryProgram4
	, module Graphics.OpenGL.Extension.NV.GeometryShader4
	, module Graphics.OpenGL.Extension.NV.GeometryShaderPassthrough
	, module Graphics.OpenGL.Extension.NV.GpuProgram4
	, module Graphics.OpenGL.Extension.NV.GpuProgram5
	, module Graphics.OpenGL.Extension.NV.GpuProgram5MemExtended
	, module Graphics.OpenGL.Extension.NV.GpuShader5
	, module Graphics.OpenGL.Extension.NV.HalfFloat
	, module Graphics.OpenGL.Extension.NV.InstancedArrays
	, module Graphics.OpenGL.Extension.NV.InternalformatSampleQuery
	, module Graphics.OpenGL.Extension.NV.LightMaxExponent
	, module Graphics.OpenGL.Extension.NV.MultisampleCoverage
	, module Graphics.OpenGL.Extension.NV.MultisampleFilterHint
	, module Graphics.OpenGL.Extension.NV.NonSquareMatrices
	, module Graphics.OpenGL.Extension.NV.OcclusionQuery
	, module Graphics.OpenGL.Extension.NV.PackedDepthStencil
	, module Graphics.OpenGL.Extension.NV.ParameterBufferObject
	, module Graphics.OpenGL.Extension.NV.ParameterBufferObject2
	, module Graphics.OpenGL.Extension.NV.PathRendering
	, module Graphics.OpenGL.Extension.NV.PathRenderingSharedEdge
	, module Graphics.OpenGL.Extension.NV.PixelDataRange
	, module Graphics.OpenGL.Extension.NV.PointSprite
	, module Graphics.OpenGL.Extension.NV.PresentVideo
	, module Graphics.OpenGL.Extension.NV.PrimitiveRestart
	, module Graphics.OpenGL.Extension.NV.ReadBuffer
	, module Graphics.OpenGL.Extension.NV.ReadBufferFront
	, module Graphics.OpenGL.Extension.NV.ReadDepth
	, module Graphics.OpenGL.Extension.NV.ReadDepthStencil
	, module Graphics.OpenGL.Extension.NV.ReadStencil
	, module Graphics.OpenGL.Extension.NV.RegisterCombiners
	, module Graphics.OpenGL.Extension.NV.RegisterCombiners2
	, module Graphics.OpenGL.Extension.NV.SRGBFormats
	, module Graphics.OpenGL.Extension.NV.SampleLocations
	, module Graphics.OpenGL.Extension.NV.SampleMaskOverrideCoverage
	, module Graphics.OpenGL.Extension.NV.ShaderAtomicCounters
	, module Graphics.OpenGL.Extension.NV.ShaderAtomicFloat
	, module Graphics.OpenGL.Extension.NV.ShaderAtomicFp16Vector
	, module Graphics.OpenGL.Extension.NV.ShaderAtomicInt64
	, module Graphics.OpenGL.Extension.NV.ShaderBufferLoad
	, module Graphics.OpenGL.Extension.NV.ShaderBufferStore
	, module Graphics.OpenGL.Extension.NV.ShaderStorageBufferObject
	, module Graphics.OpenGL.Extension.NV.ShaderThreadGroup
	, module Graphics.OpenGL.Extension.NV.ShaderThreadShuffle
	, module Graphics.OpenGL.Extension.NV.ShadowSamplersArray
	, module Graphics.OpenGL.Extension.NV.ShadowSamplersCube
	, module Graphics.OpenGL.Extension.NV.TessellationProgram5
	, module Graphics.OpenGL.Extension.NV.TexgenEmboss
	, module Graphics.OpenGL.Extension.NV.TexgenReflection
	, module Graphics.OpenGL.Extension.NV.TextureBarrier
	, module Graphics.OpenGL.Extension.NV.TextureBorderClamp
	, module Graphics.OpenGL.Extension.NV.TextureCompressionS3tcUpdate
	, module Graphics.OpenGL.Extension.NV.TextureCompressionVtc
	, module Graphics.OpenGL.Extension.NV.TextureEnvCombine4
	, module Graphics.OpenGL.Extension.NV.TextureExpandNormal
	, module Graphics.OpenGL.Extension.NV.TextureMultisample
	, module Graphics.OpenGL.Extension.NV.TextureNpot2DMipmap
	, module Graphics.OpenGL.Extension.NV.TextureRectangle
	, module Graphics.OpenGL.Extension.NV.TextureShader
	, module Graphics.OpenGL.Extension.NV.TextureShader2
	, module Graphics.OpenGL.Extension.NV.TextureShader3
	, module Graphics.OpenGL.Extension.NV.TransformFeedback
	, module Graphics.OpenGL.Extension.NV.TransformFeedback2
	, module Graphics.OpenGL.Extension.NV.UniformBufferUnifiedMemory
	, module Graphics.OpenGL.Extension.NV.VdpauInterop
	, module Graphics.OpenGL.Extension.NV.VertexArrayRange
	, module Graphics.OpenGL.Extension.NV.VertexArrayRange2
	, module Graphics.OpenGL.Extension.NV.VertexAttribInteger64bit
	, module Graphics.OpenGL.Extension.NV.VertexBufferUnifiedMemory
	, module Graphics.OpenGL.Extension.NV.VertexProgram
	, module Graphics.OpenGL.Extension.NV.VertexProgram11
	, module Graphics.OpenGL.Extension.NV.VertexProgram2
	, module Graphics.OpenGL.Extension.NV.VertexProgram2Option
	, module Graphics.OpenGL.Extension.NV.VertexProgram3
	, module Graphics.OpenGL.Extension.NV.VertexProgram4
	, module Graphics.OpenGL.Extension.NV.VideoCapture
) where

import Graphics.OpenGL.Extension.NV.BindlessMultiDrawIndirect
import Graphics.OpenGL.Extension.NV.BindlessMultiDrawIndirectCount
import Graphics.OpenGL.Extension.NV.BindlessTexture
import Graphics.OpenGL.Extension.NV.BlendEquationAdvanced
import Graphics.OpenGL.Extension.NV.BlendEquationAdvancedCoherent
import Graphics.OpenGL.Extension.NV.BlendSquare
import Graphics.OpenGL.Extension.NV.ComputeProgram5
import Graphics.OpenGL.Extension.NV.ConditionalRender
import Graphics.OpenGL.Extension.NV.ConservativeRaster
import Graphics.OpenGL.Extension.NV.CopyBuffer
import Graphics.OpenGL.Extension.NV.CopyDepthToColor
import Graphics.OpenGL.Extension.NV.CopyImage
import Graphics.OpenGL.Extension.NV.CoverageSample
import Graphics.OpenGL.Extension.NV.DeepTexture3D
import Graphics.OpenGL.Extension.NV.DepthBufferFloat
import Graphics.OpenGL.Extension.NV.DepthClamp
import Graphics.OpenGL.Extension.NV.DepthNonlinear
import Graphics.OpenGL.Extension.NV.DrawBuffers
import Graphics.OpenGL.Extension.NV.DrawInstanced
import Graphics.OpenGL.Extension.NV.DrawTexture
import Graphics.OpenGL.Extension.NV.Evaluators
import Graphics.OpenGL.Extension.NV.ExplicitAttribLocation
import Graphics.OpenGL.Extension.NV.ExplicitMultisample
import Graphics.OpenGL.Extension.NV.FboColorAttachments
import Graphics.OpenGL.Extension.NV.Fence
import Graphics.OpenGL.Extension.NV.FillRectangle
import Graphics.OpenGL.Extension.NV.FloatBuffer
import Graphics.OpenGL.Extension.NV.FogDistance
import Graphics.OpenGL.Extension.NV.FragmentCoverageToColor
import Graphics.OpenGL.Extension.NV.FragmentProgram
import Graphics.OpenGL.Extension.NV.FragmentProgram2
import Graphics.OpenGL.Extension.NV.FragmentProgram4
import Graphics.OpenGL.Extension.NV.FragmentProgramOption
import Graphics.OpenGL.Extension.NV.FragmentShaderInterlock
import Graphics.OpenGL.Extension.NV.FramebufferBlit
import Graphics.OpenGL.Extension.NV.FramebufferMixedSamples
import Graphics.OpenGL.Extension.NV.FramebufferMultisample
import Graphics.OpenGL.Extension.NV.FramebufferMultisampleCoverage
import Graphics.OpenGL.Extension.NV.GenerateMipmapSRGB
import Graphics.OpenGL.Extension.NV.GeometryProgram4
import Graphics.OpenGL.Extension.NV.GeometryShader4
import Graphics.OpenGL.Extension.NV.GeometryShaderPassthrough
import Graphics.OpenGL.Extension.NV.GpuProgram4
import Graphics.OpenGL.Extension.NV.GpuProgram5
import Graphics.OpenGL.Extension.NV.GpuProgram5MemExtended
import Graphics.OpenGL.Extension.NV.GpuShader5
import Graphics.OpenGL.Extension.NV.HalfFloat
import Graphics.OpenGL.Extension.NV.InstancedArrays
import Graphics.OpenGL.Extension.NV.InternalformatSampleQuery
import Graphics.OpenGL.Extension.NV.LightMaxExponent
import Graphics.OpenGL.Extension.NV.MultisampleCoverage
import Graphics.OpenGL.Extension.NV.MultisampleFilterHint
import Graphics.OpenGL.Extension.NV.NonSquareMatrices
import Graphics.OpenGL.Extension.NV.OcclusionQuery
import Graphics.OpenGL.Extension.NV.PackedDepthStencil
import Graphics.OpenGL.Extension.NV.ParameterBufferObject
import Graphics.OpenGL.Extension.NV.ParameterBufferObject2
import Graphics.OpenGL.Extension.NV.PathRendering
import Graphics.OpenGL.Extension.NV.PathRenderingSharedEdge
import Graphics.OpenGL.Extension.NV.PixelDataRange
import Graphics.OpenGL.Extension.NV.PointSprite
import Graphics.OpenGL.Extension.NV.PresentVideo
import Graphics.OpenGL.Extension.NV.PrimitiveRestart
import Graphics.OpenGL.Extension.NV.ReadBuffer
import Graphics.OpenGL.Extension.NV.ReadBufferFront
import Graphics.OpenGL.Extension.NV.ReadDepth
import Graphics.OpenGL.Extension.NV.ReadDepthStencil
import Graphics.OpenGL.Extension.NV.ReadStencil
import Graphics.OpenGL.Extension.NV.RegisterCombiners
import Graphics.OpenGL.Extension.NV.RegisterCombiners2
import Graphics.OpenGL.Extension.NV.SRGBFormats
import Graphics.OpenGL.Extension.NV.SampleLocations
import Graphics.OpenGL.Extension.NV.SampleMaskOverrideCoverage
import Graphics.OpenGL.Extension.NV.ShaderAtomicCounters
import Graphics.OpenGL.Extension.NV.ShaderAtomicFloat
import Graphics.OpenGL.Extension.NV.ShaderAtomicFp16Vector
import Graphics.OpenGL.Extension.NV.ShaderAtomicInt64
import Graphics.OpenGL.Extension.NV.ShaderBufferLoad
import Graphics.OpenGL.Extension.NV.ShaderBufferStore
import Graphics.OpenGL.Extension.NV.ShaderStorageBufferObject
import Graphics.OpenGL.Extension.NV.ShaderThreadGroup
import Graphics.OpenGL.Extension.NV.ShaderThreadShuffle
import Graphics.OpenGL.Extension.NV.ShadowSamplersArray
import Graphics.OpenGL.Extension.NV.ShadowSamplersCube
import Graphics.OpenGL.Extension.NV.TessellationProgram5
import Graphics.OpenGL.Extension.NV.TexgenEmboss
import Graphics.OpenGL.Extension.NV.TexgenReflection
import Graphics.OpenGL.Extension.NV.TextureBarrier
import Graphics.OpenGL.Extension.NV.TextureBorderClamp
import Graphics.OpenGL.Extension.NV.TextureCompressionS3tcUpdate
import Graphics.OpenGL.Extension.NV.TextureCompressionVtc
import Graphics.OpenGL.Extension.NV.TextureEnvCombine4
import Graphics.OpenGL.Extension.NV.TextureExpandNormal
import Graphics.OpenGL.Extension.NV.TextureMultisample
import Graphics.OpenGL.Extension.NV.TextureNpot2DMipmap
import Graphics.OpenGL.Extension.NV.TextureRectangle
import Graphics.OpenGL.Extension.NV.TextureShader
import Graphics.OpenGL.Extension.NV.TextureShader2
import Graphics.OpenGL.Extension.NV.TextureShader3
import Graphics.OpenGL.Extension.NV.TransformFeedback
import Graphics.OpenGL.Extension.NV.TransformFeedback2
import Graphics.OpenGL.Extension.NV.UniformBufferUnifiedMemory
import Graphics.OpenGL.Extension.NV.VdpauInterop
import Graphics.OpenGL.Extension.NV.VertexArrayRange
import Graphics.OpenGL.Extension.NV.VertexArrayRange2
import Graphics.OpenGL.Extension.NV.VertexAttribInteger64bit
import Graphics.OpenGL.Extension.NV.VertexBufferUnifiedMemory
import Graphics.OpenGL.Extension.NV.VertexProgram
import Graphics.OpenGL.Extension.NV.VertexProgram11
import Graphics.OpenGL.Extension.NV.VertexProgram2
import Graphics.OpenGL.Extension.NV.VertexProgram2Option
import Graphics.OpenGL.Extension.NV.VertexProgram3
import Graphics.OpenGL.Extension.NV.VertexProgram4
import Graphics.OpenGL.Extension.NV.VideoCapture