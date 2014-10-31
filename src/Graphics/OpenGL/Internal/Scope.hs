-- This file was automatically generated.
{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}

module Graphics.OpenGL.Internal.Scope (
	-- * Scope
	  module Control.Monad.Reader
	, Scope
	, HasScope(..)
	, GLLoader
	, extGL
	, funGL
	, initScope
) where

import Control.Applicative
import Control.Monad.Reader
import Data.Maybe
import qualified Data.Vector as V
import qualified Data.Vector.Unboxed as VU
import Foreign.C.String
import Foreign.C.Types
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable
import Graphics.OpenGL.Types
import Unsafe.Coerce

data Scope = Scope (V.Vector (IO ())) (VU.Vector Bool)

class HasScope e where
	scope :: e -> Scope

instance HasScope Scope where
	scope = id

type GLLoader = CString -> IO (Ptr ())

extGL :: (Monad m, MonadReader e m, HasScope e) => Int -> m Bool
extGL n = do
	Scope _ es <- asks scope
	return $ VU.unsafeIndex es n

funGL :: (MonadIO m, MonadReader e m, HasScope e) => Int -> m a
funGL n = do
	Scope fs _ <- asks scope
	funGL' fs n

funGL' :: MonadIO m => V.Vector (IO ()) -> Int -> m a
funGL' fs n = return . unsafeCoerce $ V.unsafeIndex fs n

initScope :: GLLoader -> IO Scope
initScope loader = do
	fs <- V.generateM 3014 (load loader)
	es <- loadExtensions fs
	return $ Scope fs es

load' :: GLLoader -> String -> (FunPtr a -> a) -> IO (IO ())
load' f s ffi = withCString s f >>= return . unsafeCoerce . ffi . castPtrToFunPtr
{-# NOINLINE load' #-}

loadExtensions :: V.Vector (IO ()) -> IO (VU.Vector Bool)
loadExtensions fs = do
	glGetStringi <- funGL' fs 2799 :: IO (GLenum -> GLuint -> IO (Ptr GLubyte))
	glGetIntegerv <- funGL' fs 2789 :: IO (GLenum -> Ptr GLint -> IO ())
	numExtensions <- alloca $ \p -> glGetIntegerv 0x821D p >> peek p
	supported <- forM [0..(fromIntegral numExtensions)-1] $ \n ->
		mapExtension <$> (peekCString . castPtr =<< glGetStringi 0x1F03 n)
	return $
		VU.unsafeUpd (VU.replicate 679 False) . zip (map fromJust $ filter isJust supported) $ repeat True

mapExtension :: String -> Maybe Int
mapExtension ext = case ext of
	"GL_3DFX_multisample" -> Just 0
	"GL_3DFX_tbuffer" -> Just 1
	"GL_3DFX_texture_compression_FXT1" -> Just 2
	"GL_AMD_blend_minmax_factor" -> Just 3
	"GL_AMD_compressed_3DC_texture" -> Just 4
	"GL_AMD_compressed_ATC_texture" -> Just 5
	"GL_AMD_conservative_depth" -> Just 6
	"GL_AMD_debug_output" -> Just 7
	"GL_AMD_depth_clamp_separate" -> Just 8
	"GL_AMD_draw_buffers_blend" -> Just 9
	"GL_AMD_gcn_shader" -> Just 10
	"GL_AMD_gpu_shader_int64" -> Just 11
	"GL_AMD_interleaved_elements" -> Just 12
	"GL_AMD_multi_draw_indirect" -> Just 13
	"GL_AMD_name_gen_delete" -> Just 14
	"GL_AMD_occlusion_query_event" -> Just 15
	"GL_AMD_performance_monitor" -> Just 16
	"GL_AMD_pinned_memory" -> Just 17
	"GL_AMD_program_binary_Z400" -> Just 18
	"GL_AMD_query_buffer_object" -> Just 19
	"GL_AMD_sample_positions" -> Just 20
	"GL_AMD_seamless_cubemap_per_texture" -> Just 21
	"GL_AMD_shader_atomic_counter_ops" -> Just 22
	"GL_AMD_shader_stencil_export" -> Just 23
	"GL_AMD_shader_trinary_minmax" -> Just 24
	"GL_AMD_sparse_texture" -> Just 25
	"GL_AMD_stencil_operation_extended" -> Just 26
	"GL_AMD_texture_texture4" -> Just 27
	"GL_AMD_transform_feedback3_lines_triangles" -> Just 28
	"GL_AMD_transform_feedback4" -> Just 29
	"GL_AMD_vertex_shader_layer" -> Just 30
	"GL_AMD_vertex_shader_tessellator" -> Just 31
	"GL_AMD_vertex_shader_viewport_index" -> Just 32
	"GL_ANDROID_extension_pack_es31a" -> Just 33
	"GL_ANGLE_depth_texture" -> Just 34
	"GL_ANGLE_framebuffer_blit" -> Just 35
	"GL_ANGLE_framebuffer_multisample" -> Just 36
	"GL_ANGLE_instanced_arrays" -> Just 37
	"GL_ANGLE_pack_reverse_row_order" -> Just 38
	"GL_ANGLE_program_binary" -> Just 39
	"GL_ANGLE_texture_compression_dxt3" -> Just 40
	"GL_ANGLE_texture_compression_dxt5" -> Just 41
	"GL_ANGLE_texture_usage" -> Just 42
	"GL_ANGLE_translated_shader_source" -> Just 43
	"GL_APPLE_aux_depth_stencil" -> Just 44
	"GL_APPLE_client_storage" -> Just 45
	"GL_APPLE_clip_distance" -> Just 46
	"GL_APPLE_color_buffer_packed_float" -> Just 47
	"GL_APPLE_copy_texture_levels" -> Just 48
	"GL_APPLE_element_array" -> Just 49
	"GL_APPLE_fence" -> Just 50
	"GL_APPLE_float_pixels" -> Just 51
	"GL_APPLE_flush_buffer_range" -> Just 52
	"GL_APPLE_framebuffer_multisample" -> Just 53
	"GL_APPLE_object_purgeable" -> Just 54
	"GL_APPLE_rgb_422" -> Just 55
	"GL_APPLE_row_bytes" -> Just 56
	"GL_APPLE_specular_vector" -> Just 57
	"GL_APPLE_sync" -> Just 58
	"GL_APPLE_texture_2D_limited_npot" -> Just 59
	"GL_APPLE_texture_format_BGRA8888" -> Just 60
	"GL_APPLE_texture_max_level" -> Just 61
	"GL_APPLE_texture_packed_float" -> Just 62
	"GL_APPLE_texture_range" -> Just 63
	"GL_APPLE_transform_hint" -> Just 64
	"GL_APPLE_vertex_array_object" -> Just 65
	"GL_APPLE_vertex_array_range" -> Just 66
	"GL_APPLE_vertex_program_evaluators" -> Just 67
	"GL_APPLE_ycbcr_422" -> Just 68
	"GL_ARB_ES2_compatibility" -> Just 69
	"GL_ARB_ES3_1_compatibility" -> Just 70
	"GL_ARB_ES3_compatibility" -> Just 71
	"GL_ARB_arrays_of_arrays" -> Just 72
	"GL_ARB_base_instance" -> Just 73
	"GL_ARB_bindless_texture" -> Just 74
	"GL_ARB_blend_func_extended" -> Just 75
	"GL_ARB_buffer_storage" -> Just 76
	"GL_ARB_cl_event" -> Just 77
	"GL_ARB_clear_buffer_object" -> Just 78
	"GL_ARB_clear_texture" -> Just 79
	"GL_ARB_clip_control" -> Just 80
	"GL_ARB_color_buffer_float" -> Just 81
	"GL_ARB_compatibility" -> Just 82
	"GL_ARB_compressed_texture_pixel_storage" -> Just 83
	"GL_ARB_compute_shader" -> Just 84
	"GL_ARB_compute_variable_group_size" -> Just 85
	"GL_ARB_conditional_render_inverted" -> Just 86
	"GL_ARB_conservative_depth" -> Just 87
	"GL_ARB_copy_buffer" -> Just 88
	"GL_ARB_copy_image" -> Just 89
	"GL_ARB_cull_distance" -> Just 90
	"GL_ARB_debug_output" -> Just 91
	"GL_ARB_depth_buffer_float" -> Just 92
	"GL_ARB_depth_clamp" -> Just 93
	"GL_ARB_depth_texture" -> Just 94
	"GL_ARB_derivative_control" -> Just 95
	"GL_ARB_direct_state_access" -> Just 96
	"GL_ARB_draw_buffers" -> Just 97
	"GL_ARB_draw_buffers_blend" -> Just 98
	"GL_ARB_draw_elements_base_vertex" -> Just 99
	"GL_ARB_draw_indirect" -> Just 100
	"GL_ARB_draw_instanced" -> Just 101
	"GL_ARB_enhanced_layouts" -> Just 102
	"GL_ARB_explicit_attrib_location" -> Just 103
	"GL_ARB_explicit_uniform_location" -> Just 104
	"GL_ARB_fragment_coord_conventions" -> Just 105
	"GL_ARB_fragment_layer_viewport" -> Just 106
	"GL_ARB_fragment_program" -> Just 107
	"GL_ARB_fragment_program_shadow" -> Just 108
	"GL_ARB_fragment_shader" -> Just 109
	"GL_ARB_framebuffer_no_attachments" -> Just 110
	"GL_ARB_framebuffer_object" -> Just 111
	"GL_ARB_framebuffer_sRGB" -> Just 112
	"GL_ARB_geometry_shader4" -> Just 113
	"GL_ARB_get_program_binary" -> Just 114
	"GL_ARB_get_texture_sub_image" -> Just 115
	"GL_ARB_gpu_shader5" -> Just 116
	"GL_ARB_gpu_shader_fp64" -> Just 117
	"GL_ARB_half_float_pixel" -> Just 118
	"GL_ARB_half_float_vertex" -> Just 119
	"GL_ARB_imaging" -> Just 120
	"GL_ARB_indirect_parameters" -> Just 121
	"GL_ARB_instanced_arrays" -> Just 122
	"GL_ARB_internalformat_query" -> Just 123
	"GL_ARB_internalformat_query2" -> Just 124
	"GL_ARB_invalidate_subdata" -> Just 125
	"GL_ARB_map_buffer_alignment" -> Just 126
	"GL_ARB_map_buffer_range" -> Just 127
	"GL_ARB_matrix_palette" -> Just 128
	"GL_ARB_multi_bind" -> Just 129
	"GL_ARB_multi_draw_indirect" -> Just 130
	"GL_ARB_multisample" -> Just 131
	"GL_ARB_multitexture" -> Just 132
	"GL_ARB_occlusion_query" -> Just 133
	"GL_ARB_occlusion_query2" -> Just 134
	"GL_ARB_pipeline_statistics_query" -> Just 135
	"GL_ARB_pixel_buffer_object" -> Just 136
	"GL_ARB_point_parameters" -> Just 137
	"GL_ARB_point_sprite" -> Just 138
	"GL_ARB_program_interface_query" -> Just 139
	"GL_ARB_provoking_vertex" -> Just 140
	"GL_ARB_query_buffer_object" -> Just 141
	"GL_ARB_robust_buffer_access_behavior" -> Just 142
	"GL_ARB_robustness" -> Just 143
	"GL_ARB_robustness_isolation" -> Just 144
	"GL_ARB_sample_shading" -> Just 145
	"GL_ARB_sampler_objects" -> Just 146
	"GL_ARB_seamless_cube_map" -> Just 147
	"GL_ARB_seamless_cubemap_per_texture" -> Just 148
	"GL_ARB_separate_shader_objects" -> Just 149
	"GL_ARB_shader_atomic_counters" -> Just 150
	"GL_ARB_shader_bit_encoding" -> Just 151
	"GL_ARB_shader_draw_parameters" -> Just 152
	"GL_ARB_shader_group_vote" -> Just 153
	"GL_ARB_shader_image_load_store" -> Just 154
	"GL_ARB_shader_image_size" -> Just 155
	"GL_ARB_shader_objects" -> Just 156
	"GL_ARB_shader_precision" -> Just 157
	"GL_ARB_shader_stencil_export" -> Just 158
	"GL_ARB_shader_storage_buffer_object" -> Just 159
	"GL_ARB_shader_subroutine" -> Just 160
	"GL_ARB_shader_texture_image_samples" -> Just 161
	"GL_ARB_shader_texture_lod" -> Just 162
	"GL_ARB_shading_language_100" -> Just 163
	"GL_ARB_shading_language_420pack" -> Just 164
	"GL_ARB_shading_language_include" -> Just 165
	"GL_ARB_shading_language_packing" -> Just 166
	"GL_ARB_shadow" -> Just 167
	"GL_ARB_shadow_ambient" -> Just 168
	"GL_ARB_sparse_buffer" -> Just 169
	"GL_ARB_sparse_texture" -> Just 170
	"GL_ARB_stencil_texturing" -> Just 171
	"GL_ARB_sync" -> Just 172
	"GL_ARB_tessellation_shader" -> Just 173
	"GL_ARB_texture_barrier" -> Just 174
	"GL_ARB_texture_border_clamp" -> Just 175
	"GL_ARB_texture_buffer_object" -> Just 176
	"GL_ARB_texture_buffer_object_rgb32" -> Just 177
	"GL_ARB_texture_buffer_range" -> Just 178
	"GL_ARB_texture_compression" -> Just 179
	"GL_ARB_texture_compression_bptc" -> Just 180
	"GL_ARB_texture_compression_rgtc" -> Just 181
	"GL_ARB_texture_cube_map" -> Just 182
	"GL_ARB_texture_cube_map_array" -> Just 183
	"GL_ARB_texture_env_add" -> Just 184
	"GL_ARB_texture_env_combine" -> Just 185
	"GL_ARB_texture_env_crossbar" -> Just 186
	"GL_ARB_texture_env_dot3" -> Just 187
	"GL_ARB_texture_float" -> Just 188
	"GL_ARB_texture_gather" -> Just 189
	"GL_ARB_texture_mirror_clamp_to_edge" -> Just 190
	"GL_ARB_texture_mirrored_repeat" -> Just 191
	"GL_ARB_texture_multisample" -> Just 192
	"GL_ARB_texture_non_power_of_two" -> Just 193
	"GL_ARB_texture_query_levels" -> Just 194
	"GL_ARB_texture_query_lod" -> Just 195
	"GL_ARB_texture_rectangle" -> Just 196
	"GL_ARB_texture_rg" -> Just 197
	"GL_ARB_texture_rgb10_a2ui" -> Just 198
	"GL_ARB_texture_stencil8" -> Just 199
	"GL_ARB_texture_storage" -> Just 200
	"GL_ARB_texture_storage_multisample" -> Just 201
	"GL_ARB_texture_swizzle" -> Just 202
	"GL_ARB_texture_view" -> Just 203
	"GL_ARB_timer_query" -> Just 204
	"GL_ARB_transform_feedback2" -> Just 205
	"GL_ARB_transform_feedback3" -> Just 206
	"GL_ARB_transform_feedback_instanced" -> Just 207
	"GL_ARB_transform_feedback_overflow_query" -> Just 208
	"GL_ARB_transpose_matrix" -> Just 209
	"GL_ARB_uniform_buffer_object" -> Just 210
	"GL_ARB_vertex_array_bgra" -> Just 211
	"GL_ARB_vertex_array_object" -> Just 212
	"GL_ARB_vertex_attrib_64bit" -> Just 213
	"GL_ARB_vertex_attrib_binding" -> Just 214
	"GL_ARB_vertex_blend" -> Just 215
	"GL_ARB_vertex_buffer_object" -> Just 216
	"GL_ARB_vertex_program" -> Just 217
	"GL_ARB_vertex_shader" -> Just 218
	"GL_ARB_vertex_type_10f_11f_11f_rev" -> Just 219
	"GL_ARB_vertex_type_2_10_10_10_rev" -> Just 220
	"GL_ARB_viewport_array" -> Just 221
	"GL_ARB_window_pos" -> Just 222
	"GL_ARM_mali_program_binary" -> Just 223
	"GL_ARM_mali_shader_binary" -> Just 224
	"GL_ARM_rgba8" -> Just 225
	"GL_ARM_shader_framebuffer_fetch" -> Just 226
	"GL_ARM_shader_framebuffer_fetch_depth_stencil" -> Just 227
	"GL_ATI_draw_buffers" -> Just 228
	"GL_ATI_element_array" -> Just 229
	"GL_ATI_envmap_bumpmap" -> Just 230
	"GL_ATI_fragment_shader" -> Just 231
	"GL_ATI_map_object_buffer" -> Just 232
	"GL_ATI_meminfo" -> Just 233
	"GL_ATI_pixel_format_float" -> Just 234
	"GL_ATI_pn_triangles" -> Just 235
	"GL_ATI_separate_stencil" -> Just 236
	"GL_ATI_text_fragment_shader" -> Just 237
	"GL_ATI_texture_env_combine3" -> Just 238
	"GL_ATI_texture_float" -> Just 239
	"GL_ATI_texture_mirror_once" -> Just 240
	"GL_ATI_vertex_array_object" -> Just 241
	"GL_ATI_vertex_attrib_array_object" -> Just 242
	"GL_ATI_vertex_streams" -> Just 243
	"GL_DMP_program_binary" -> Just 244
	"GL_DMP_shader_binary" -> Just 245
	"GL_EXT_422_pixels" -> Just 246
	"GL_EXT_abgr" -> Just 247
	"GL_EXT_bgra" -> Just 248
	"GL_EXT_bindable_uniform" -> Just 249
	"GL_EXT_blend_color" -> Just 250
	"GL_EXT_blend_equation_separate" -> Just 251
	"GL_EXT_blend_func_separate" -> Just 252
	"GL_EXT_blend_logic_op" -> Just 253
	"GL_EXT_blend_minmax" -> Just 254
	"GL_EXT_blend_subtract" -> Just 255
	"GL_EXT_clip_volume_hint" -> Just 256
	"GL_EXT_cmyka" -> Just 257
	"GL_EXT_color_buffer_half_float" -> Just 258
	"GL_EXT_color_subtable" -> Just 259
	"GL_EXT_compiled_vertex_array" -> Just 260
	"GL_EXT_convolution" -> Just 261
	"GL_EXT_coordinate_frame" -> Just 262
	"GL_EXT_copy_image" -> Just 263
	"GL_EXT_copy_texture" -> Just 264
	"GL_EXT_cull_vertex" -> Just 265
	"GL_EXT_debug_label" -> Just 266
	"GL_EXT_debug_marker" -> Just 267
	"GL_EXT_depth_bounds_test" -> Just 268
	"GL_EXT_direct_state_access" -> Just 269
	"GL_EXT_discard_framebuffer" -> Just 270
	"GL_EXT_disjoint_timer_query" -> Just 271
	"GL_EXT_draw_buffers" -> Just 272
	"GL_EXT_draw_buffers2" -> Just 273
	"GL_EXT_draw_buffers_indexed" -> Just 274
	"GL_EXT_draw_instanced" -> Just 275
	"GL_EXT_draw_range_elements" -> Just 276
	"GL_EXT_fog_coord" -> Just 277
	"GL_EXT_framebuffer_blit" -> Just 278
	"GL_EXT_framebuffer_multisample" -> Just 279
	"GL_EXT_framebuffer_multisample_blit_scaled" -> Just 280
	"GL_EXT_framebuffer_object" -> Just 281
	"GL_EXT_framebuffer_sRGB" -> Just 282
	"GL_EXT_geometry_point_size" -> Just 283
	"GL_EXT_geometry_shader" -> Just 284
	"GL_EXT_geometry_shader4" -> Just 285
	"GL_EXT_gpu_program_parameters" -> Just 286
	"GL_EXT_gpu_shader4" -> Just 287
	"GL_EXT_gpu_shader5" -> Just 288
	"GL_EXT_histogram" -> Just 289
	"GL_EXT_index_array_formats" -> Just 290
	"GL_EXT_index_func" -> Just 291
	"GL_EXT_index_material" -> Just 292
	"GL_EXT_index_texture" -> Just 293
	"GL_EXT_instanced_arrays" -> Just 294
	"GL_EXT_light_texture" -> Just 295
	"GL_EXT_map_buffer_range" -> Just 296
	"GL_EXT_misc_attribute" -> Just 297
	"GL_EXT_multi_draw_arrays" -> Just 298
	"GL_EXT_multisample" -> Just 299
	"GL_EXT_multisampled_render_to_texture" -> Just 300
	"GL_EXT_multiview_draw_buffers" -> Just 301
	"GL_EXT_occlusion_query_boolean" -> Just 302
	"GL_EXT_packed_depth_stencil" -> Just 303
	"GL_EXT_packed_float" -> Just 304
	"GL_EXT_packed_pixels" -> Just 305
	"GL_EXT_paletted_texture" -> Just 306
	"GL_EXT_pixel_buffer_object" -> Just 307
	"GL_EXT_pixel_transform" -> Just 308
	"GL_EXT_pixel_transform_color_table" -> Just 309
	"GL_EXT_point_parameters" -> Just 310
	"GL_EXT_polygon_offset" -> Just 311
	"GL_EXT_polygon_offset_clamp" -> Just 312
	"GL_EXT_post_depth_coverage" -> Just 313
	"GL_EXT_primitive_bounding_box" -> Just 314
	"GL_EXT_provoking_vertex" -> Just 315
	"GL_EXT_pvrtc_sRGB" -> Just 316
	"GL_EXT_raster_multisample" -> Just 317
	"GL_EXT_read_format_bgra" -> Just 318
	"GL_EXT_rescale_normal" -> Just 319
	"GL_EXT_robustness" -> Just 320
	"GL_EXT_sRGB" -> Just 321
	"GL_EXT_sRGB_write_control" -> Just 322
	"GL_EXT_secondary_color" -> Just 323
	"GL_EXT_separate_shader_objects" -> Just 324
	"GL_EXT_separate_specular_color" -> Just 325
	"GL_EXT_shader_framebuffer_fetch" -> Just 326
	"GL_EXT_shader_image_load_formatted" -> Just 327
	"GL_EXT_shader_image_load_store" -> Just 328
	"GL_EXT_shader_implicit_conversions" -> Just 329
	"GL_EXT_shader_integer_mix" -> Just 330
	"GL_EXT_shader_io_blocks" -> Just 331
	"GL_EXT_shader_pixel_local_storage" -> Just 332
	"GL_EXT_shader_texture_lod" -> Just 333
	"GL_EXT_shadow_funcs" -> Just 334
	"GL_EXT_shadow_samplers" -> Just 335
	"GL_EXT_shared_texture_palette" -> Just 336
	"GL_EXT_sparse_texture2" -> Just 337
	"GL_EXT_stencil_clear_tag" -> Just 338
	"GL_EXT_stencil_two_side" -> Just 339
	"GL_EXT_stencil_wrap" -> Just 340
	"GL_EXT_subtexture" -> Just 341
	"GL_EXT_tessellation_point_size" -> Just 342
	"GL_EXT_tessellation_shader" -> Just 343
	"GL_EXT_texture" -> Just 344
	"GL_EXT_texture3D" -> Just 345
	"GL_EXT_texture_array" -> Just 346
	"GL_EXT_texture_border_clamp" -> Just 347
	"GL_EXT_texture_buffer" -> Just 348
	"GL_EXT_texture_buffer_object" -> Just 349
	"GL_EXT_texture_compression_dxt1" -> Just 350
	"GL_EXT_texture_compression_latc" -> Just 351
	"GL_EXT_texture_compression_rgtc" -> Just 352
	"GL_EXT_texture_compression_s3tc" -> Just 353
	"GL_EXT_texture_cube_map" -> Just 354
	"GL_EXT_texture_cube_map_array" -> Just 355
	"GL_EXT_texture_env_add" -> Just 356
	"GL_EXT_texture_env_combine" -> Just 357
	"GL_EXT_texture_env_dot3" -> Just 358
	"GL_EXT_texture_filter_anisotropic" -> Just 359
	"GL_EXT_texture_filter_minmax" -> Just 360
	"GL_EXT_texture_format_BGRA8888" -> Just 361
	"GL_EXT_texture_integer" -> Just 362
	"GL_EXT_texture_lod_bias" -> Just 363
	"GL_EXT_texture_mirror_clamp" -> Just 364
	"GL_EXT_texture_object" -> Just 365
	"GL_EXT_texture_perturb_normal" -> Just 366
	"GL_EXT_texture_rg" -> Just 367
	"GL_EXT_texture_sRGB" -> Just 368
	"GL_EXT_texture_sRGB_decode" -> Just 369
	"GL_EXT_texture_shared_exponent" -> Just 370
	"GL_EXT_texture_snorm" -> Just 371
	"GL_EXT_texture_storage" -> Just 372
	"GL_EXT_texture_swizzle" -> Just 373
	"GL_EXT_texture_type_2_10_10_10_REV" -> Just 374
	"GL_EXT_texture_view" -> Just 375
	"GL_EXT_timer_query" -> Just 376
	"GL_EXT_transform_feedback" -> Just 377
	"GL_EXT_unpack_subimage" -> Just 378
	"GL_EXT_vertex_array" -> Just 379
	"GL_EXT_vertex_array_bgra" -> Just 380
	"GL_EXT_vertex_attrib_64bit" -> Just 381
	"GL_EXT_vertex_shader" -> Just 382
	"GL_EXT_vertex_weighting" -> Just 383
	"GL_EXT_x11_sync_object" -> Just 384
	"GL_FJ_shader_binary_GCCSO" -> Just 385
	"GL_GREMEDY_frame_terminator" -> Just 386
	"GL_GREMEDY_string_marker" -> Just 387
	"GL_HP_convolution_border_modes" -> Just 388
	"GL_HP_image_transform" -> Just 389
	"GL_HP_occlusion_test" -> Just 390
	"GL_HP_texture_lighting" -> Just 391
	"GL_IBM_cull_vertex" -> Just 392
	"GL_IBM_multimode_draw_arrays" -> Just 393
	"GL_IBM_rasterpos_clip" -> Just 394
	"GL_IBM_static_data" -> Just 395
	"GL_IBM_texture_mirrored_repeat" -> Just 396
	"GL_IBM_vertex_array_lists" -> Just 397
	"GL_IMG_multisampled_render_to_texture" -> Just 398
	"GL_IMG_program_binary" -> Just 399
	"GL_IMG_read_format" -> Just 400
	"GL_IMG_shader_binary" -> Just 401
	"GL_IMG_texture_compression_pvrtc" -> Just 402
	"GL_IMG_texture_compression_pvrtc2" -> Just 403
	"GL_IMG_texture_env_enhanced_fixed_function" -> Just 404
	"GL_IMG_user_clip_plane" -> Just 405
	"GL_INGR_blend_func_separate" -> Just 406
	"GL_INGR_color_clamp" -> Just 407
	"GL_INGR_interlace_read" -> Just 408
	"GL_INTEL_fragment_shader_ordering" -> Just 409
	"GL_INTEL_map_texture" -> Just 410
	"GL_INTEL_parallel_arrays" -> Just 411
	"GL_INTEL_performance_query" -> Just 412
	"GL_KHR_blend_equation_advanced" -> Just 413
	"GL_KHR_blend_equation_advanced_coherent" -> Just 414
	"GL_KHR_context_flush_control" -> Just 415
	"GL_KHR_debug" -> Just 416
	"GL_KHR_robust_buffer_access_behavior" -> Just 417
	"GL_KHR_robustness" -> Just 418
	"GL_KHR_texture_compression_astc_hdr" -> Just 419
	"GL_KHR_texture_compression_astc_ldr" -> Just 420
	"GL_MESAX_texture_stack" -> Just 421
	"GL_MESA_pack_invert" -> Just 422
	"GL_MESA_resize_buffers" -> Just 423
	"GL_MESA_window_pos" -> Just 424
	"GL_MESA_ycbcr_texture" -> Just 425
	"GL_NVX_conditional_render" -> Just 426
	"GL_NVX_gpu_memory_info" -> Just 427
	"GL_NV_bindless_multi_draw_indirect" -> Just 428
	"GL_NV_bindless_multi_draw_indirect_count" -> Just 429
	"GL_NV_bindless_texture" -> Just 430
	"GL_NV_blend_equation_advanced" -> Just 431
	"GL_NV_blend_equation_advanced_coherent" -> Just 432
	"GL_NV_blend_square" -> Just 433
	"GL_NV_compute_program5" -> Just 434
	"GL_NV_conditional_render" -> Just 435
	"GL_NV_conservative_raster" -> Just 436
	"GL_NV_copy_buffer" -> Just 437
	"GL_NV_copy_depth_to_color" -> Just 438
	"GL_NV_copy_image" -> Just 439
	"GL_NV_coverage_sample" -> Just 440
	"GL_NV_deep_texture3D" -> Just 441
	"GL_NV_depth_buffer_float" -> Just 442
	"GL_NV_depth_clamp" -> Just 443
	"GL_NV_depth_nonlinear" -> Just 444
	"GL_NV_draw_buffers" -> Just 445
	"GL_NV_draw_instanced" -> Just 446
	"GL_NV_draw_texture" -> Just 447
	"GL_NV_evaluators" -> Just 448
	"GL_NV_explicit_attrib_location" -> Just 449
	"GL_NV_explicit_multisample" -> Just 450
	"GL_NV_fbo_color_attachments" -> Just 451
	"GL_NV_fence" -> Just 452
	"GL_NV_fill_rectangle" -> Just 453
	"GL_NV_float_buffer" -> Just 454
	"GL_NV_fog_distance" -> Just 455
	"GL_NV_fragment_coverage_to_color" -> Just 456
	"GL_NV_fragment_program" -> Just 457
	"GL_NV_fragment_program2" -> Just 458
	"GL_NV_fragment_program4" -> Just 459
	"GL_NV_fragment_program_option" -> Just 460
	"GL_NV_fragment_shader_interlock" -> Just 461
	"GL_NV_framebuffer_blit" -> Just 462
	"GL_NV_framebuffer_mixed_samples" -> Just 463
	"GL_NV_framebuffer_multisample" -> Just 464
	"GL_NV_framebuffer_multisample_coverage" -> Just 465
	"GL_NV_generate_mipmap_sRGB" -> Just 466
	"GL_NV_geometry_program4" -> Just 467
	"GL_NV_geometry_shader4" -> Just 468
	"GL_NV_geometry_shader_passthrough" -> Just 469
	"GL_NV_gpu_program4" -> Just 470
	"GL_NV_gpu_program5" -> Just 471
	"GL_NV_gpu_program5_mem_extended" -> Just 472
	"GL_NV_gpu_shader5" -> Just 473
	"GL_NV_half_float" -> Just 474
	"GL_NV_instanced_arrays" -> Just 475
	"GL_NV_internalformat_sample_query" -> Just 476
	"GL_NV_light_max_exponent" -> Just 477
	"GL_NV_multisample_coverage" -> Just 478
	"GL_NV_multisample_filter_hint" -> Just 479
	"GL_NV_non_square_matrices" -> Just 480
	"GL_NV_occlusion_query" -> Just 481
	"GL_NV_packed_depth_stencil" -> Just 482
	"GL_NV_parameter_buffer_object" -> Just 483
	"GL_NV_parameter_buffer_object2" -> Just 484
	"GL_NV_path_rendering" -> Just 485
	"GL_NV_pixel_data_range" -> Just 486
	"GL_NV_point_sprite" -> Just 487
	"GL_NV_present_video" -> Just 488
	"GL_NV_primitive_restart" -> Just 489
	"GL_NV_read_buffer" -> Just 490
	"GL_NV_read_buffer_front" -> Just 491
	"GL_NV_read_depth" -> Just 492
	"GL_NV_read_depth_stencil" -> Just 493
	"GL_NV_read_stencil" -> Just 494
	"GL_NV_register_combiners" -> Just 495
	"GL_NV_path_rendering_shared_edge" -> Just 496
	"GL_NV_register_combiners2" -> Just 497
	"GL_NV_sRGB_formats" -> Just 498
	"GL_NV_sample_locations" -> Just 499
	"GL_NV_sample_mask_override_coverage" -> Just 500
	"GL_NV_shader_atomic_counters" -> Just 501
	"GL_NV_shader_atomic_float" -> Just 502
	"GL_NV_shader_atomic_fp16_vector" -> Just 503
	"GL_NV_shader_atomic_int64" -> Just 504
	"GL_NV_shader_buffer_load" -> Just 505
	"GL_NV_shader_buffer_store" -> Just 506
	"GL_NV_shader_storage_buffer_object" -> Just 507
	"GL_NV_shader_thread_group" -> Just 508
	"GL_NV_shader_thread_shuffle" -> Just 509
	"GL_NV_shadow_samplers_array" -> Just 510
	"GL_NV_shadow_samplers_cube" -> Just 511
	"GL_NV_tessellation_program5" -> Just 512
	"GL_NV_texgen_emboss" -> Just 513
	"GL_NV_texgen_reflection" -> Just 514
	"GL_NV_texture_barrier" -> Just 515
	"GL_NV_texture_border_clamp" -> Just 516
	"GL_NV_texture_compression_s3tc_update" -> Just 517
	"GL_NV_texture_compression_vtc" -> Just 518
	"GL_NV_texture_env_combine4" -> Just 519
	"GL_NV_texture_expand_normal" -> Just 520
	"GL_NV_texture_multisample" -> Just 521
	"GL_NV_texture_npot_2D_mipmap" -> Just 522
	"GL_NV_texture_rectangle" -> Just 523
	"GL_NV_texture_shader" -> Just 524
	"GL_NV_texture_shader2" -> Just 525
	"GL_NV_texture_shader3" -> Just 526
	"GL_NV_transform_feedback" -> Just 527
	"GL_NV_transform_feedback2" -> Just 528
	"GL_NV_uniform_buffer_unified_memory" -> Just 529
	"GL_NV_vdpau_interop" -> Just 530
	"GL_NV_vertex_array_range" -> Just 531
	"GL_NV_vertex_array_range2" -> Just 532
	"GL_NV_vertex_attrib_integer_64bit" -> Just 533
	"GL_NV_vertex_buffer_unified_memory" -> Just 534
	"GL_NV_vertex_program" -> Just 535
	"GL_NV_vertex_program1_1" -> Just 536
	"GL_NV_vertex_program2" -> Just 537
	"GL_NV_vertex_program2_option" -> Just 538
	"GL_NV_vertex_program3" -> Just 539
	"GL_NV_vertex_program4" -> Just 540
	"GL_NV_video_capture" -> Just 541
	"GL_OES_EGL_image" -> Just 542
	"GL_OES_EGL_image_external" -> Just 543
	"GL_OES_blend_equation_separate" -> Just 544
	"GL_OES_blend_func_separate" -> Just 545
	"GL_OES_blend_subtract" -> Just 546
	"GL_OES_byte_coordinates" -> Just 547
	"GL_OES_compressed_ETC1_RGB8_sub_texture" -> Just 548
	"GL_OES_compressed_ETC1_RGB8_texture" -> Just 549
	"GL_OES_compressed_paletted_texture" -> Just 550
	"GL_OES_depth24" -> Just 551
	"GL_OES_depth32" -> Just 552
	"GL_OES_depth_texture" -> Just 553
	"GL_OES_draw_texture" -> Just 554
	"GL_OES_element_index_uint" -> Just 555
	"GL_OES_extended_matrix_palette" -> Just 556
	"GL_OES_fbo_render_mipmap" -> Just 557
	"GL_OES_fixed_point" -> Just 558
	"GL_OES_fragment_precision_high" -> Just 559
	"GL_OES_framebuffer_object" -> Just 560
	"GL_OES_get_program_binary" -> Just 561
	"GL_OES_mapbuffer" -> Just 562
	"GL_OES_matrix_get" -> Just 563
	"GL_OES_matrix_palette" -> Just 564
	"GL_OES_packed_depth_stencil" -> Just 565
	"GL_OES_point_size_array" -> Just 566
	"GL_OES_point_sprite" -> Just 567
	"GL_OES_query_matrix" -> Just 568
	"GL_OES_read_format" -> Just 569
	"GL_OES_required_internalformat" -> Just 570
	"GL_OES_rgb8_rgba8" -> Just 571
	"GL_OES_sample_shading" -> Just 572
	"GL_OES_sample_variables" -> Just 573
	"GL_OES_shader_image_atomic" -> Just 574
	"GL_OES_shader_multisample_interpolation" -> Just 575
	"GL_OES_single_precision" -> Just 576
	"GL_OES_standard_derivatives" -> Just 577
	"GL_OES_stencil1" -> Just 578
	"GL_OES_stencil4" -> Just 579
	"GL_OES_stencil8" -> Just 580
	"GL_OES_stencil_wrap" -> Just 581
	"GL_OES_surfaceless_context" -> Just 582
	"GL_OES_texture_3D" -> Just 583
	"GL_OES_texture_compression_astc" -> Just 584
	"GL_OES_texture_cube_map" -> Just 585
	"GL_OES_texture_env_crossbar" -> Just 586
	"GL_OES_texture_float" -> Just 587
	"GL_OES_texture_float_linear" -> Just 588
	"GL_OES_texture_half_float" -> Just 589
	"GL_OES_texture_half_float_linear" -> Just 590
	"GL_OES_texture_mirrored_repeat" -> Just 591
	"GL_OES_texture_npot" -> Just 592
	"GL_OES_texture_stencil8" -> Just 593
	"GL_OES_texture_storage_multisample_2d_array" -> Just 594
	"GL_OES_vertex_array_object" -> Just 595
	"GL_OES_vertex_half_float" -> Just 596
	"GL_OES_vertex_type_10_10_10_2" -> Just 597
	"GL_OML_interlace" -> Just 598
	"GL_OML_resample" -> Just 599
	"GL_OML_subsample" -> Just 600
	"GL_PGI_misc_hints" -> Just 601
	"GL_PGI_vertex_hints" -> Just 602
	"GL_QCOM_alpha_test" -> Just 603
	"GL_QCOM_binning_control" -> Just 604
	"GL_QCOM_driver_control" -> Just 605
	"GL_QCOM_extended_get" -> Just 606
	"GL_QCOM_extended_get2" -> Just 607
	"GL_QCOM_perfmon_global_mode" -> Just 608
	"GL_QCOM_tiled_rendering" -> Just 609
	"GL_QCOM_writeonly_rendering" -> Just 610
	"GL_REND_screen_coordinates" -> Just 611
	"GL_S3_s3tc" -> Just 612
	"GL_SGIS_detail_texture" -> Just 613
	"GL_SGIS_fog_function" -> Just 614
	"GL_SGIS_generate_mipmap" -> Just 615
	"GL_SGIS_multisample" -> Just 616
	"GL_SGIS_pixel_texture" -> Just 617
	"GL_SGIS_point_line_texgen" -> Just 618
	"GL_SGIS_point_parameters" -> Just 619
	"GL_SGIS_sharpen_texture" -> Just 620
	"GL_SGIS_texture4D" -> Just 621
	"GL_SGIS_texture_border_clamp" -> Just 622
	"GL_SGIS_texture_color_mask" -> Just 623
	"GL_SGIS_texture_edge_clamp" -> Just 624
	"GL_SGIS_texture_filter4" -> Just 625
	"GL_SGIS_texture_lod" -> Just 626
	"GL_SGIS_texture_select" -> Just 627
	"GL_SGIX_async" -> Just 628
	"GL_SGIX_async_histogram" -> Just 629
	"GL_SGIX_async_pixel" -> Just 630
	"GL_SGIX_blend_alpha_minmax" -> Just 631
	"GL_SGIX_calligraphic_fragment" -> Just 632
	"GL_SGIX_clipmap" -> Just 633
	"GL_SGIX_convolution_accuracy" -> Just 634
	"GL_SGIX_depth_pass_instrument" -> Just 635
	"GL_SGIX_depth_texture" -> Just 636
	"GL_SGIX_flush_raster" -> Just 637
	"GL_SGIX_fog_offset" -> Just 638
	"GL_SGIX_fragment_lighting" -> Just 639
	"GL_SGIX_framezoom" -> Just 640
	"GL_SGIX_igloo_interface" -> Just 641
	"GL_SGIX_instruments" -> Just 642
	"GL_SGIX_interlace" -> Just 643
	"GL_SGIX_ir_instrument1" -> Just 644
	"GL_SGIX_list_priority" -> Just 645
	"GL_SGIX_pixel_texture" -> Just 646
	"GL_SGIX_pixel_tiles" -> Just 647
	"GL_SGIX_polynomial_ffd" -> Just 648
	"GL_SGIX_reference_plane" -> Just 649
	"GL_SGIX_resample" -> Just 650
	"GL_SGIX_scalebias_hint" -> Just 651
	"GL_SGIX_shadow" -> Just 652
	"GL_SGIX_shadow_ambient" -> Just 653
	"GL_SGIX_sprite" -> Just 654
	"GL_SGIX_subsample" -> Just 655
	"GL_SGIX_tag_sample_buffer" -> Just 656
	"GL_SGIX_texture_add_env" -> Just 657
	"GL_SGIX_texture_coordinate_clamp" -> Just 658
	"GL_SGIX_texture_lod_bias" -> Just 659
	"GL_SGIX_texture_multi_buffer" -> Just 660
	"GL_SGIX_texture_scale_bias" -> Just 661
	"GL_SGIX_vertex_preclip" -> Just 662
	"GL_SGIX_ycrcb" -> Just 663
	"GL_SGIX_ycrcb_subsample" -> Just 664
	"GL_SGIX_ycrcba" -> Just 665
	"GL_SGI_color_matrix" -> Just 666
	"GL_SGI_color_table" -> Just 667
	"GL_SGI_texture_color_table" -> Just 668
	"GL_SUNX_constant_data" -> Just 669
	"GL_SUN_convolution_border_modes" -> Just 670
	"GL_SUN_global_alpha" -> Just 671
	"GL_SUN_mesh_array" -> Just 672
	"GL_SUN_slice_accum" -> Just 673
	"GL_SUN_triangle_list" -> Just 674
	"GL_SUN_vertex" -> Just 675
	"GL_VIV_shader_binary" -> Just 676
	"GL_WIN_phong_shading" -> Just 677
	"GL_WIN_specular_fog" -> Just 678
	_ -> Nothing

load :: GLLoader -> Int -> IO (IO ())
load f n = case n of
	0 -> load' f "glDebugMessageCallbackAMD" ffiDEBUGPROCAMDPtrVIOV
	1 -> load' f "glDebugMessageEnableAMD" ffienumenumsizeiPtruintbooleanIOV
	2 -> load' f "glDebugMessageInsertAMD" ffienumenumuintsizeiPtrcharIOV
	3 -> load' f "glGetDebugMessageLogAMD" ffiuintsizeiPtrenumPtruintPtruintPtrsizeiPtrcharIOuint
	4 -> load' f "glBlendEquationIndexedAMD" ffiuintenumIOV
	5 -> load' f "glBlendEquationSeparateIndexedAMD" ffiuintenumenumIOV
	6 -> load' f "glBlendFuncIndexedAMD" ffiuintenumenumIOV
	7 -> load' f "glBlendFuncSeparateIndexedAMD" ffiuintenumenumenumenumIOV
	8 -> load' f "glGetUniformi64vNV" ffiuintintPtrint64EXTIOV
	9 -> load' f "glGetUniformui64vNV" ffiuintintPtruint64EXTIOV
	10 -> load' f "glProgramUniform1i64NV" ffiuintintint64EXTIOV
	11 -> load' f "glProgramUniform1i64vNV" ffiuintintsizeiPtrint64EXTIOV
	12 -> load' f "glProgramUniform1ui64NV" ffiuintintuint64EXTIOV
	13 -> load' f "glProgramUniform1ui64vNV" ffiuintintsizeiPtruint64EXTIOV
	14 -> load' f "glProgramUniform2i64NV" ffiuintintint64EXTint64EXTIOV
	15 -> load' f "glProgramUniform2i64vNV" ffiuintintsizeiPtrint64EXTIOV
	16 -> load' f "glProgramUniform2ui64NV" ffiuintintuint64EXTuint64EXTIOV
	17 -> load' f "glProgramUniform2ui64vNV" ffiuintintsizeiPtruint64EXTIOV
	18 -> load' f "glProgramUniform3i64NV" ffiuintintint64EXTint64EXTint64EXTIOV
	19 -> load' f "glProgramUniform3i64vNV" ffiuintintsizeiPtrint64EXTIOV
	20 -> load' f "glProgramUniform3ui64NV" ffiuintintuint64EXTuint64EXTuint64EXTIOV
	21 -> load' f "glProgramUniform3ui64vNV" ffiuintintsizeiPtruint64EXTIOV
	22 -> load' f "glProgramUniform4i64NV" ffiuintintint64EXTint64EXTint64EXTint64EXTIOV
	23 -> load' f "glProgramUniform4i64vNV" ffiuintintsizeiPtrint64EXTIOV
	24 -> load' f "glProgramUniform4ui64NV" ffiuintintuint64EXTuint64EXTuint64EXTuint64EXTIOV
	25 -> load' f "glProgramUniform4ui64vNV" ffiuintintsizeiPtruint64EXTIOV
	26 -> load' f "glUniform1i64NV" ffiintint64EXTIOV
	27 -> load' f "glUniform1i64vNV" ffiintsizeiPtrint64EXTIOV
	28 -> load' f "glUniform1ui64NV" ffiintuint64EXTIOV
	29 -> load' f "glUniform1ui64vNV" ffiintsizeiPtruint64EXTIOV
	30 -> load' f "glUniform2i64NV" ffiintint64EXTint64EXTIOV
	31 -> load' f "glUniform2i64vNV" ffiintsizeiPtrint64EXTIOV
	32 -> load' f "glUniform2ui64NV" ffiintuint64EXTuint64EXTIOV
	33 -> load' f "glUniform2ui64vNV" ffiintsizeiPtruint64EXTIOV
	34 -> load' f "glUniform3i64NV" ffiintint64EXTint64EXTint64EXTIOV
	35 -> load' f "glUniform3i64vNV" ffiintsizeiPtrint64EXTIOV
	36 -> load' f "glUniform3ui64NV" ffiintuint64EXTuint64EXTuint64EXTIOV
	37 -> load' f "glUniform3ui64vNV" ffiintsizeiPtruint64EXTIOV
	38 -> load' f "glUniform4i64NV" ffiintint64EXTint64EXTint64EXTint64EXTIOV
	39 -> load' f "glUniform4i64vNV" ffiintsizeiPtrint64EXTIOV
	40 -> load' f "glUniform4ui64NV" ffiintuint64EXTuint64EXTuint64EXTuint64EXTIOV
	41 -> load' f "glUniform4ui64vNV" ffiintsizeiPtruint64EXTIOV
	42 -> load' f "glVertexAttribParameteriAMD" ffiuintenumintIOV
	43 -> load' f "glMultiDrawArraysIndirectAMD" ffienumPtrVsizeisizeiIOV
	44 -> load' f "glMultiDrawElementsIndirectAMD" ffienumenumPtrVsizeisizeiIOV
	45 -> load' f "glDeleteNamesAMD" ffienumuintPtruintIOV
	46 -> load' f "glGenNamesAMD" ffienumuintPtruintIOV
	47 -> load' f "glIsNameAMD" ffienumuintIOboolean
	48 -> load' f "glQueryObjectParameteruiAMD" ffienumuintenumuintIOV
	49 -> load' f "glBeginPerfMonitorAMD" ffiuintIOV
	50 -> load' f "glDeletePerfMonitorsAMD" ffisizeiPtruintIOV
	51 -> load' f "glEndPerfMonitorAMD" ffiuintIOV
	52 -> load' f "glGenPerfMonitorsAMD" ffisizeiPtruintIOV
	53 -> load' f "glGetPerfMonitorCounterDataAMD" ffiuintenumsizeiPtruintPtrintIOV
	54 -> load' f "glGetPerfMonitorCounterInfoAMD" ffiuintuintenumPtrVIOV
	55 -> load' f "glGetPerfMonitorCounterStringAMD" ffiuintuintsizeiPtrsizeiPtrcharIOV
	56 -> load' f "glGetPerfMonitorCountersAMD" ffiuintPtrintPtrintsizeiPtruintIOV
	57 -> load' f "glGetPerfMonitorGroupStringAMD" ffiuintsizeiPtrsizeiPtrcharIOV
	58 -> load' f "glGetPerfMonitorGroupsAMD" ffiPtrintsizeiPtruintIOV
	59 -> load' f "glSelectPerfMonitorCountersAMD" ffiuintbooleanuintintPtruintIOV
	60 -> load' f "glSetMultisamplefvAMD" ffienumuintPtrfloatIOV
	61 -> load' f "glTexStorageSparseAMD" ffienumenumsizeisizeisizeisizeibitfieldIOV
	62 -> load' f "glTextureStorageSparseAMD" ffiuintenumenumsizeisizeisizeisizeibitfieldIOV
	63 -> load' f "glStencilOpValueAMD" ffienumuintIOV
	64 -> load' f "glTessellationFactorAMD" ffifloatIOV
	65 -> load' f "glTessellationModeAMD" ffienumIOV
	66 -> load' f "glBlitFramebufferANGLE" ffiintintintintintintintintbitfieldenumIOV
	67 -> load' f "glRenderbufferStorageMultisampleANGLE" ffienumsizeienumsizeisizeiIOV
	68 -> load' f "glDrawArraysInstancedANGLE" ffienumintsizeisizeiIOV
	69 -> load' f "glDrawElementsInstancedANGLE" ffienumsizeienumPtrVsizeiIOV
	70 -> load' f "glVertexAttribDivisorANGLE" ffiuintuintIOV
	71 -> load' f "glGetTranslatedShaderSourceANGLE" ffiuintsizeiPtrsizeiPtrcharIOV
	72 -> load' f "glCopyTextureLevelsAPPLE" ffiuintuintintsizeiIOV
	73 -> load' f "glDrawElementArrayAPPLE" ffienumintsizeiIOV
	74 -> load' f "glDrawRangeElementArrayAPPLE" ffienumuintuintintsizeiIOV
	75 -> load' f "glElementPointerAPPLE" ffienumPtrVIOV
	76 -> load' f "glMultiDrawElementArrayAPPLE" ffienumPtrintPtrsizeisizeiIOV
	77 -> load' f "glMultiDrawRangeElementArrayAPPLE" ffienumuintuintPtrintPtrsizeisizeiIOV
	78 -> load' f "glDeleteFencesAPPLE" ffisizeiPtruintIOV
	79 -> load' f "glFinishFenceAPPLE" ffiuintIOV
	80 -> load' f "glFinishObjectAPPLE" ffienumintIOV
	81 -> load' f "glGenFencesAPPLE" ffisizeiPtruintIOV
	82 -> load' f "glIsFenceAPPLE" ffiuintIOboolean
	83 -> load' f "glSetFenceAPPLE" ffiuintIOV
	84 -> load' f "glTestFenceAPPLE" ffiuintIOboolean
	85 -> load' f "glTestObjectAPPLE" ffienumuintIOboolean
	86 -> load' f "glBufferParameteriAPPLE" ffienumenumintIOV
	87 -> load' f "glFlushMappedBufferRangeAPPLE" ffienumintptrsizeiptrIOV
	88 -> load' f "glRenderbufferStorageMultisampleAPPLE" ffienumsizeienumsizeisizeiIOV
	89 -> load' f "glResolveMultisampleFramebufferAPPLE" ffiIOV
	90 -> load' f "glGetObjectParameterivAPPLE" ffienumuintenumPtrintIOV
	91 -> load' f "glObjectPurgeableAPPLE" ffienumuintenumIOenum
	92 -> load' f "glObjectUnpurgeableAPPLE" ffienumuintenumIOenum
	93 -> load' f "glClientWaitSyncAPPLE" ffisyncbitfielduint64IOenum
	94 -> load' f "glDeleteSyncAPPLE" ffisyncIOV
	95 -> load' f "glFenceSyncAPPLE" ffienumbitfieldIOsync
	96 -> load' f "glGetInteger64vAPPLE" ffienumPtrint64IOV
	97 -> load' f "glGetSyncivAPPLE" ffisyncenumsizeiPtrsizeiPtrintIOV
	98 -> load' f "glIsSyncAPPLE" ffisyncIOboolean
	99 -> load' f "glWaitSyncAPPLE" ffisyncbitfielduint64IOV
	100 -> load' f "glGetTexParameterPointervAPPLE" ffienumenumPtrVIOV
	101 -> load' f "glTextureRangeAPPLE" ffienumsizeiPtrVIOV
	102 -> load' f "glBindVertexArrayAPPLE" ffiuintIOV
	103 -> load' f "glDeleteVertexArraysAPPLE" ffisizeiPtruintIOV
	104 -> load' f "glGenVertexArraysAPPLE" ffisizeiPtruintIOV
	105 -> load' f "glIsVertexArrayAPPLE" ffiuintIOboolean
	106 -> load' f "glFlushVertexArrayRangeAPPLE" ffisizeiPtrVIOV
	107 -> load' f "glVertexArrayParameteriAPPLE" ffienumintIOV
	108 -> load' f "glVertexArrayRangeAPPLE" ffisizeiPtrVIOV
	109 -> load' f "glDisableVertexAttribAPPLE" ffiuintenumIOV
	110 -> load' f "glEnableVertexAttribAPPLE" ffiuintenumIOV
	111 -> load' f "glIsVertexAttribEnabledAPPLE" ffiuintenumIOboolean
	112 -> load' f "glMapVertexAttrib1dAPPLE" ffiuintuintdoubledoubleintintPtrdoubleIOV
	113 -> load' f "glMapVertexAttrib1fAPPLE" ffiuintuintfloatfloatintintPtrfloatIOV
	114 -> load' f "glMapVertexAttrib2dAPPLE" ffiuintuintdoubledoubleintintdoubledoubleintintPtrdoubleIOV
	115 -> load' f "glMapVertexAttrib2fAPPLE" ffiuintuintfloatfloatintintfloatfloatintintPtrfloatIOV
	116 -> load' f "glDrawArraysInstancedBaseInstance" ffienumintsizeisizeiuintIOV
	117 -> load' f "glDrawElementsInstancedBaseInstance" ffienumsizeienumPtrVsizeiuintIOV
	118 -> load' f "glDrawElementsInstancedBaseVertexBaseInstance" ffienumsizeienumPtrVsizeiintuintIOV
	119 -> load' f "glGetImageHandleARB" ffiuintintbooleanintenumIOuint64
	120 -> load' f "glGetTextureHandleARB" ffiuintIOuint64
	121 -> load' f "glGetTextureSamplerHandleARB" ffiuintuintIOuint64
	122 -> load' f "glGetVertexAttribLui64vARB" ffiuintenumPtruint64EXTIOV
	123 -> load' f "glIsImageHandleResidentARB" ffiuint64IOboolean
	124 -> load' f "glIsTextureHandleResidentARB" ffiuint64IOboolean
	125 -> load' f "glMakeImageHandleNonResidentARB" ffiuint64IOV
	126 -> load' f "glMakeImageHandleResidentARB" ffiuint64enumIOV
	127 -> load' f "glMakeTextureHandleNonResidentARB" ffiuint64IOV
	128 -> load' f "glMakeTextureHandleResidentARB" ffiuint64IOV
	129 -> load' f "glProgramUniformHandleui64ARB" ffiuintintuint64IOV
	130 -> load' f "glProgramUniformHandleui64vARB" ffiuintintsizeiPtruint64IOV
	131 -> load' f "glUniformHandleui64ARB" ffiintuint64IOV
	132 -> load' f "glUniformHandleui64vARB" ffiintsizeiPtruint64IOV
	133 -> load' f "glVertexAttribL1ui64ARB" ffiuintuint64EXTIOV
	134 -> load' f "glVertexAttribL1ui64vARB" ffiuintPtruint64EXTIOV
	135 -> load' f "glBindFragDataLocationIndexed" ffiuintuintuintPtrcharIOV
	136 -> load' f "glGetFragDataIndex" ffiuintPtrcharIOint
	137 -> load' f "glBufferStorage" ffienumsizeiptrPtrVbitfieldIOV
	138 -> load' f "glCreateSyncFromCLeventARB" ffiPtrVPtrVbitfieldIOsync
	139 -> load' f "glClearBufferData" ffienumenumenumenumPtrVIOV
	140 -> load' f "glClearBufferSubData" ffienumenumintptrsizeiptrenumenumPtrVIOV
	141 -> load' f "glClearTexImage" ffiuintintenumenumPtrVIOV
	142 -> load' f "glClearTexSubImage" ffiuintintintintintsizeisizeisizeienumenumPtrVIOV
	143 -> load' f "glClipControl" ffienumenumIOV
	144 -> load' f "glClampColorARB" ffienumenumIOV
	145 -> load' f "glDispatchCompute" ffiuintuintuintIOV
	146 -> load' f "glDispatchComputeIndirect" ffiintptrIOV
	147 -> load' f "glDispatchComputeGroupSizeARB" ffiuintuintuintuintuintuintIOV
	148 -> load' f "glCopyBufferSubData" ffienumenumintptrintptrsizeiptrIOV
	149 -> load' f "glCopyImageSubData" ffiuintenumintintintintuintenumintintintintsizeisizeisizeiIOV
	150 -> load' f "glDebugMessageCallbackARB" ffiDEBUGPROCARBPtrVIOV
	151 -> load' f "glDebugMessageControlARB" ffienumenumenumsizeiPtruintbooleanIOV
	152 -> load' f "glDebugMessageInsertARB" ffienumenumuintenumsizeiPtrcharIOV
	153 -> load' f "glGetDebugMessageLogARB" ffiuintsizeiPtrenumPtrenumPtruintPtrenumPtrsizeiPtrcharIOuint
	154 -> load' f "glBindTextureUnit" ffiuintuintIOV
	155 -> load' f "glBlitNamedFramebuffer" ffiuintuintintintintintintintintintbitfieldenumIOV
	156 -> load' f "glCheckNamedFramebufferStatus" ffiuintenumIOenum
	157 -> load' f "glClearNamedBufferData" ffiuintenumenumenumPtrVIOV
	158 -> load' f "glClearNamedBufferSubData" ffiuintenumintptrsizeienumenumPtrVIOV
	159 -> load' f "glClearNamedFramebufferfi" ffiuintenumfloatintIOV
	160 -> load' f "glClearNamedFramebufferfv" ffiuintenumintPtrfloatIOV
	161 -> load' f "glClearNamedFramebufferiv" ffiuintenumintPtrintIOV
	162 -> load' f "glClearNamedFramebufferuiv" ffiuintenumintPtruintIOV
	163 -> load' f "glCompressedTextureSubImage1D" ffiuintintintsizeienumsizeiPtrVIOV
	164 -> load' f "glCompressedTextureSubImage2D" ffiuintintintintsizeisizeienumsizeiPtrVIOV
	165 -> load' f "glCompressedTextureSubImage3D" ffiuintintintintintsizeisizeisizeienumsizeiPtrVIOV
	166 -> load' f "glCopyNamedBufferSubData" ffiuintuintintptrintptrsizeiIOV
	167 -> load' f "glCopyTextureSubImage1D" ffiuintintintintintsizeiIOV
	168 -> load' f "glCopyTextureSubImage2D" ffiuintintintintintintsizeisizeiIOV
	169 -> load' f "glCopyTextureSubImage3D" ffiuintintintintintintintsizeisizeiIOV
	170 -> load' f "glCreateBuffers" ffisizeiPtruintIOV
	171 -> load' f "glCreateFramebuffers" ffisizeiPtruintIOV
	172 -> load' f "glCreateProgramPipelines" ffisizeiPtruintIOV
	173 -> load' f "glCreateQueries" ffienumsizeiPtruintIOV
	174 -> load' f "glCreateRenderbuffers" ffisizeiPtruintIOV
	175 -> load' f "glCreateSamplers" ffisizeiPtruintIOV
	176 -> load' f "glCreateTextures" ffienumsizeiPtruintIOV
	177 -> load' f "glCreateTransformFeedbacks" ffisizeiPtruintIOV
	178 -> load' f "glCreateVertexArrays" ffisizeiPtruintIOV
	179 -> load' f "glDisableVertexArrayAttrib" ffiuintuintIOV
	180 -> load' f "glEnableVertexArrayAttrib" ffiuintuintIOV
	181 -> load' f "glFlushMappedNamedBufferRange" ffiuintintptrsizeiIOV
	182 -> load' f "glGenerateTextureMipmap" ffiuintIOV
	183 -> load' f "glGetCompressedTextureImage" ffiuintintsizeiPtrVIOV
	184 -> load' f "glGetNamedBufferParameteri64v" ffiuintenumPtrint64IOV
	185 -> load' f "glGetNamedBufferParameteriv" ffiuintenumPtrintIOV
	186 -> load' f "glGetNamedBufferPointerv" ffiuintenumPtrVIOV
	187 -> load' f "glGetNamedBufferSubData" ffiuintintptrsizeiPtrVIOV
	188 -> load' f "glGetNamedFramebufferAttachmentParameteriv" ffiuintenumenumPtrintIOV
	189 -> load' f "glGetNamedFramebufferParameteriv" ffiuintenumPtrintIOV
	190 -> load' f "glGetNamedRenderbufferParameteriv" ffiuintenumPtrintIOV
	191 -> load' f "glGetQueryBufferObjecti64v" ffiuintuintenumintptrIOV
	192 -> load' f "glGetQueryBufferObjectiv" ffiuintuintenumintptrIOV
	193 -> load' f "glGetQueryBufferObjectui64v" ffiuintuintenumintptrIOV
	194 -> load' f "glGetQueryBufferObjectuiv" ffiuintuintenumintptrIOV
	195 -> load' f "glGetTextureImage" ffiuintintenumenumsizeiPtrVIOV
	196 -> load' f "glGetTextureLevelParameterfv" ffiuintintenumPtrfloatIOV
	197 -> load' f "glGetTextureLevelParameteriv" ffiuintintenumPtrintIOV
	198 -> load' f "glGetTextureParameterIiv" ffiuintenumPtrintIOV
	199 -> load' f "glGetTextureParameterIuiv" ffiuintenumPtruintIOV
	200 -> load' f "glGetTextureParameterfv" ffiuintenumPtrfloatIOV
	201 -> load' f "glGetTextureParameteriv" ffiuintenumPtrintIOV
	202 -> load' f "glGetTransformFeedbacki64_v" ffiuintenumuintPtrint64IOV
	203 -> load' f "glGetTransformFeedbacki_v" ffiuintenumuintPtrintIOV
	204 -> load' f "glGetTransformFeedbackiv" ffiuintenumPtrintIOV
	205 -> load' f "glGetVertexArrayIndexed64iv" ffiuintuintenumPtrint64IOV
	206 -> load' f "glGetVertexArrayIndexediv" ffiuintuintenumPtrintIOV
	207 -> load' f "glGetVertexArrayiv" ffiuintenumPtrintIOV
	208 -> load' f "glInvalidateNamedFramebufferData" ffiuintsizeiPtrenumIOV
	209 -> load' f "glInvalidateNamedFramebufferSubData" ffiuintsizeiPtrenumintintsizeisizeiIOV
	210 -> load' f "glMapNamedBuffer" ffiuintenumIOPtrV
	211 -> load' f "glMapNamedBufferRange" ffiuintintptrsizeibitfieldIOPtrV
	212 -> load' f "glNamedBufferData" ffiuintsizeiPtrVenumIOV
	213 -> load' f "glNamedBufferStorage" ffiuintsizeiPtrVbitfieldIOV
	214 -> load' f "glNamedBufferSubData" ffiuintintptrsizeiPtrVIOV
	215 -> load' f "glNamedFramebufferDrawBuffer" ffiuintenumIOV
	216 -> load' f "glNamedFramebufferDrawBuffers" ffiuintsizeiPtrenumIOV
	217 -> load' f "glNamedFramebufferParameteri" ffiuintenumintIOV
	218 -> load' f "glNamedFramebufferReadBuffer" ffiuintenumIOV
	219 -> load' f "glNamedFramebufferRenderbuffer" ffiuintenumenumuintIOV
	220 -> load' f "glNamedFramebufferTexture" ffiuintenumuintintIOV
	221 -> load' f "glNamedFramebufferTextureLayer" ffiuintenumuintintintIOV
	222 -> load' f "glNamedRenderbufferStorage" ffiuintenumsizeisizeiIOV
	223 -> load' f "glNamedRenderbufferStorageMultisample" ffiuintsizeienumsizeisizeiIOV
	224 -> load' f "glTextureBuffer" ffiuintenumuintIOV
	225 -> load' f "glTextureBufferRange" ffiuintenumuintintptrsizeiIOV
	226 -> load' f "glTextureParameterIiv" ffiuintenumPtrintIOV
	227 -> load' f "glTextureParameterIuiv" ffiuintenumPtruintIOV
	228 -> load' f "glTextureParameterf" ffiuintenumfloatIOV
	229 -> load' f "glTextureParameterfv" ffiuintenumPtrfloatIOV
	230 -> load' f "glTextureParameteri" ffiuintenumintIOV
	231 -> load' f "glTextureParameteriv" ffiuintenumPtrintIOV
	232 -> load' f "glTextureStorage1D" ffiuintsizeienumsizeiIOV
	233 -> load' f "glTextureStorage2D" ffiuintsizeienumsizeisizeiIOV
	234 -> load' f "glTextureStorage2DMultisample" ffiuintsizeienumsizeisizeibooleanIOV
	235 -> load' f "glTextureStorage3D" ffiuintsizeienumsizeisizeisizeiIOV
	236 -> load' f "glTextureStorage3DMultisample" ffiuintsizeienumsizeisizeisizeibooleanIOV
	237 -> load' f "glTextureSubImage1D" ffiuintintintsizeienumenumPtrVIOV
	238 -> load' f "glTextureSubImage2D" ffiuintintintintsizeisizeienumenumPtrVIOV
	239 -> load' f "glTextureSubImage3D" ffiuintintintintintsizeisizeisizeienumenumPtrVIOV
	240 -> load' f "glTransformFeedbackBufferBase" ffiuintuintuintIOV
	241 -> load' f "glTransformFeedbackBufferRange" ffiuintuintuintintptrsizeiIOV
	242 -> load' f "glUnmapNamedBuffer" ffiuintIOboolean
	243 -> load' f "glVertexArrayAttribBinding" ffiuintuintuintIOV
	244 -> load' f "glVertexArrayAttribFormat" ffiuintuintintenumbooleanuintIOV
	245 -> load' f "glVertexArrayAttribIFormat" ffiuintuintintenumuintIOV
	246 -> load' f "glVertexArrayAttribLFormat" ffiuintuintintenumuintIOV
	247 -> load' f "glVertexArrayBindingDivisor" ffiuintuintuintIOV
	248 -> load' f "glVertexArrayElementBuffer" ffiuintuintIOV
	249 -> load' f "glVertexArrayVertexBuffer" ffiuintuintuintintptrsizeiIOV
	250 -> load' f "glVertexArrayVertexBuffers" ffiuintuintsizeiPtruintPtrintptrPtrsizeiIOV
	251 -> load' f "glDrawBuffersARB" ffisizeiPtrenumIOV
	252 -> load' f "glBlendEquationSeparateiARB" ffiuintenumenumIOV
	253 -> load' f "glBlendEquationiARB" ffiuintenumIOV
	254 -> load' f "glBlendFuncSeparateiARB" ffiuintenumenumenumenumIOV
	255 -> load' f "glBlendFunciARB" ffiuintenumenumIOV
	256 -> load' f "glDrawElementsBaseVertex" ffienumsizeienumPtrVintIOV
	257 -> load' f "glDrawElementsInstancedBaseVertex" ffienumsizeienumPtrVsizeiintIOV
	258 -> load' f "glDrawRangeElementsBaseVertex" ffienumuintuintsizeienumPtrVintIOV
	259 -> load' f "glMultiDrawElementsBaseVertex" ffienumPtrsizeienumPtrVsizeiPtrintIOV
	260 -> load' f "glDrawArraysIndirect" ffienumPtrVIOV
	261 -> load' f "glDrawElementsIndirect" ffienumenumPtrVIOV
	262 -> load' f "glDrawArraysInstancedARB" ffienumintsizeisizeiIOV
	263 -> load' f "glDrawElementsInstancedARB" ffienumsizeienumPtrVsizeiIOV
	264 -> load' f "glClearDepthf" ffifloatIOV
	265 -> load' f "glDepthRangef" ffifloatfloatIOV
	266 -> load' f "glGetShaderPrecisionFormat" ffienumenumPtrintPtrintIOV
	267 -> load' f "glReleaseShaderCompiler" ffiIOV
	268 -> load' f "glShaderBinary" ffisizeiPtruintenumPtrVsizeiIOV
	269 -> load' f "glMemoryBarrierByRegion" ffibitfieldIOV
	270 -> load' f "glBindProgramARB" ffienumuintIOV
	271 -> load' f "glDeleteProgramsARB" ffisizeiPtruintIOV
	272 -> load' f "glGenProgramsARB" ffisizeiPtruintIOV
	273 -> load' f "glGetProgramEnvParameterdvARB" ffienumuintPtrdoubleIOV
	274 -> load' f "glGetProgramEnvParameterfvARB" ffienumuintPtrfloatIOV
	275 -> load' f "glGetProgramLocalParameterdvARB" ffienumuintPtrdoubleIOV
	276 -> load' f "glGetProgramLocalParameterfvARB" ffienumuintPtrfloatIOV
	277 -> load' f "glGetProgramStringARB" ffienumenumPtrVIOV
	278 -> load' f "glGetProgramivARB" ffienumenumPtrintIOV
	279 -> load' f "glIsProgramARB" ffiuintIOboolean
	280 -> load' f "glProgramEnvParameter4dARB" ffienumuintdoubledoubledoubledoubleIOV
	281 -> load' f "glProgramEnvParameter4dvARB" ffienumuintPtrdoubleIOV
	282 -> load' f "glProgramEnvParameter4fARB" ffienumuintfloatfloatfloatfloatIOV
	283 -> load' f "glProgramEnvParameter4fvARB" ffienumuintPtrfloatIOV
	284 -> load' f "glProgramLocalParameter4dARB" ffienumuintdoubledoubledoubledoubleIOV
	285 -> load' f "glProgramLocalParameter4dvARB" ffienumuintPtrdoubleIOV
	286 -> load' f "glProgramLocalParameter4fARB" ffienumuintfloatfloatfloatfloatIOV
	287 -> load' f "glProgramLocalParameter4fvARB" ffienumuintPtrfloatIOV
	288 -> load' f "glProgramStringARB" ffienumenumsizeiPtrVIOV
	289 -> load' f "glFramebufferParameteri" ffienumenumintIOV
	290 -> load' f "glGetFramebufferParameteriv" ffienumenumPtrintIOV
	291 -> load' f "glBindFramebuffer" ffienumuintIOV
	292 -> load' f "glBindRenderbuffer" ffienumuintIOV
	293 -> load' f "glBlitFramebuffer" ffiintintintintintintintintbitfieldenumIOV
	294 -> load' f "glCheckFramebufferStatus" ffienumIOenum
	295 -> load' f "glDeleteFramebuffers" ffisizeiPtruintIOV
	296 -> load' f "glDeleteRenderbuffers" ffisizeiPtruintIOV
	297 -> load' f "glFramebufferRenderbuffer" ffienumenumenumuintIOV
	298 -> load' f "glFramebufferTexture1D" ffienumenumenumuintintIOV
	299 -> load' f "glFramebufferTexture2D" ffienumenumenumuintintIOV
	300 -> load' f "glFramebufferTexture3D" ffienumenumenumuintintintIOV
	301 -> load' f "glFramebufferTextureLayer" ffienumenumuintintintIOV
	302 -> load' f "glGenFramebuffers" ffisizeiPtruintIOV
	303 -> load' f "glGenRenderbuffers" ffisizeiPtruintIOV
	304 -> load' f "glGenerateMipmap" ffienumIOV
	305 -> load' f "glGetFramebufferAttachmentParameteriv" ffienumenumenumPtrintIOV
	306 -> load' f "glGetRenderbufferParameteriv" ffienumenumPtrintIOV
	307 -> load' f "glIsFramebuffer" ffiuintIOboolean
	308 -> load' f "glIsRenderbuffer" ffiuintIOboolean
	309 -> load' f "glRenderbufferStorage" ffienumenumsizeisizeiIOV
	310 -> load' f "glRenderbufferStorageMultisample" ffienumsizeienumsizeisizeiIOV
	311 -> load' f "glFramebufferTextureARB" ffienumenumuintintIOV
	312 -> load' f "glFramebufferTextureFaceARB" ffienumenumuintintenumIOV
	313 -> load' f "glFramebufferTextureLayerARB" ffienumenumuintintintIOV
	314 -> load' f "glProgramParameteriARB" ffiuintenumintIOV
	315 -> load' f "glGetProgramBinary" ffiuintsizeiPtrsizeiPtrenumPtrVIOV
	316 -> load' f "glProgramBinary" ffiuintenumPtrVsizeiIOV
	317 -> load' f "glProgramParameteri" ffiuintenumintIOV
	318 -> load' f "glGetCompressedTextureSubImage" ffiuintintintintintsizeisizeisizeisizeiPtrVIOV
	319 -> load' f "glGetTextureSubImage" ffiuintintintintintsizeisizeisizeienumenumsizeiPtrVIOV
	320 -> load' f "glGetUniformdv" ffiuintintPtrdoubleIOV
	321 -> load' f "glUniform1d" ffiintdoubleIOV
	322 -> load' f "glUniform1dv" ffiintsizeiPtrdoubleIOV
	323 -> load' f "glUniform2d" ffiintdoubledoubleIOV
	324 -> load' f "glUniform2dv" ffiintsizeiPtrdoubleIOV
	325 -> load' f "glUniform3d" ffiintdoubledoubledoubleIOV
	326 -> load' f "glUniform3dv" ffiintsizeiPtrdoubleIOV
	327 -> load' f "glUniform4d" ffiintdoubledoubledoubledoubleIOV
	328 -> load' f "glUniform4dv" ffiintsizeiPtrdoubleIOV
	329 -> load' f "glUniformMatrix2dv" ffiintsizeibooleanPtrdoubleIOV
	330 -> load' f "glUniformMatrix2x3dv" ffiintsizeibooleanPtrdoubleIOV
	331 -> load' f "glUniformMatrix2x4dv" ffiintsizeibooleanPtrdoubleIOV
	332 -> load' f "glUniformMatrix3dv" ffiintsizeibooleanPtrdoubleIOV
	333 -> load' f "glUniformMatrix3x2dv" ffiintsizeibooleanPtrdoubleIOV
	334 -> load' f "glUniformMatrix3x4dv" ffiintsizeibooleanPtrdoubleIOV
	335 -> load' f "glUniformMatrix4dv" ffiintsizeibooleanPtrdoubleIOV
	336 -> load' f "glUniformMatrix4x2dv" ffiintsizeibooleanPtrdoubleIOV
	337 -> load' f "glUniformMatrix4x3dv" ffiintsizeibooleanPtrdoubleIOV
	338 -> load' f "glBlendColor" ffifloatfloatfloatfloatIOV
	339 -> load' f "glBlendEquation" ffienumIOV
	340 -> load' f "glColorSubTable" ffienumsizeisizeienumenumPtrVIOV
	341 -> load' f "glColorTable" ffienumenumsizeienumenumPtrVIOV
	342 -> load' f "glColorTableParameterfv" ffienumenumPtrfloatIOV
	343 -> load' f "glColorTableParameteriv" ffienumenumPtrintIOV
	344 -> load' f "glConvolutionFilter1D" ffienumenumsizeienumenumPtrVIOV
	345 -> load' f "glConvolutionFilter2D" ffienumenumsizeisizeienumenumPtrVIOV
	346 -> load' f "glConvolutionParameterf" ffienumenumfloatIOV
	347 -> load' f "glConvolutionParameterfv" ffienumenumPtrfloatIOV
	348 -> load' f "glConvolutionParameteri" ffienumenumintIOV
	349 -> load' f "glConvolutionParameteriv" ffienumenumPtrintIOV
	350 -> load' f "glCopyColorSubTable" ffienumsizeiintintsizeiIOV
	351 -> load' f "glCopyColorTable" ffienumenumintintsizeiIOV
	352 -> load' f "glCopyConvolutionFilter1D" ffienumenumintintsizeiIOV
	353 -> load' f "glCopyConvolutionFilter2D" ffienumenumintintsizeisizeiIOV
	354 -> load' f "glGetColorTable" ffienumenumenumPtrVIOV
	355 -> load' f "glGetColorTableParameterfv" ffienumenumPtrfloatIOV
	356 -> load' f "glGetColorTableParameteriv" ffienumenumPtrintIOV
	357 -> load' f "glGetConvolutionFilter" ffienumenumenumPtrVIOV
	358 -> load' f "glGetConvolutionParameterfv" ffienumenumPtrfloatIOV
	359 -> load' f "glGetConvolutionParameteriv" ffienumenumPtrintIOV
	360 -> load' f "glGetHistogram" ffienumbooleanenumenumPtrVIOV
	361 -> load' f "glGetHistogramParameterfv" ffienumenumPtrfloatIOV
	362 -> load' f "glGetHistogramParameteriv" ffienumenumPtrintIOV
	363 -> load' f "glGetMinmax" ffienumbooleanenumenumPtrVIOV
	364 -> load' f "glGetMinmaxParameterfv" ffienumenumPtrfloatIOV
	365 -> load' f "glGetMinmaxParameteriv" ffienumenumPtrintIOV
	366 -> load' f "glGetSeparableFilter" ffienumenumenumPtrVPtrVPtrVIOV
	367 -> load' f "glHistogram" ffienumsizeienumbooleanIOV
	368 -> load' f "glMinmax" ffienumenumbooleanIOV
	369 -> load' f "glResetHistogram" ffienumIOV
	370 -> load' f "glResetMinmax" ffienumIOV
	371 -> load' f "glSeparableFilter2D" ffienumenumsizeisizeienumenumPtrVPtrVIOV
	372 -> load' f "glMultiDrawArraysIndirectCountARB" ffienumintptrintptrsizeisizeiIOV
	373 -> load' f "glMultiDrawElementsIndirectCountARB" ffienumenumintptrintptrsizeisizeiIOV
	374 -> load' f "glVertexAttribDivisorARB" ffiuintuintIOV
	375 -> load' f "glGetInternalformativ" ffienumenumenumsizeiPtrintIOV
	376 -> load' f "glGetInternalformati64v" ffienumenumenumsizeiPtrint64IOV
	377 -> load' f "glInvalidateBufferData" ffiuintIOV
	378 -> load' f "glInvalidateBufferSubData" ffiuintintptrsizeiptrIOV
	379 -> load' f "glInvalidateFramebuffer" ffienumsizeiPtrenumIOV
	380 -> load' f "glInvalidateSubFramebuffer" ffienumsizeiPtrenumintintsizeisizeiIOV
	381 -> load' f "glInvalidateTexImage" ffiuintintIOV
	382 -> load' f "glInvalidateTexSubImage" ffiuintintintintintsizeisizeisizeiIOV
	383 -> load' f "glFlushMappedBufferRange" ffienumintptrsizeiptrIOV
	384 -> load' f "glMapBufferRange" ffienumintptrsizeiptrbitfieldIOPtrV
	385 -> load' f "glCurrentPaletteMatrixARB" ffiintIOV
	386 -> load' f "glMatrixIndexPointerARB" ffiintenumsizeiPtrVIOV
	387 -> load' f "glMatrixIndexubvARB" ffiintPtrubyteIOV
	388 -> load' f "glMatrixIndexuivARB" ffiintPtruintIOV
	389 -> load' f "glMatrixIndexusvARB" ffiintPtrushortIOV
	390 -> load' f "glBindBuffersBase" ffienumuintsizeiPtruintIOV
	391 -> load' f "glBindBuffersRange" ffienumuintsizeiPtruintPtrintptrPtrsizeiptrIOV
	392 -> load' f "glBindImageTextures" ffiuintsizeiPtruintIOV
	393 -> load' f "glBindSamplers" ffiuintsizeiPtruintIOV
	394 -> load' f "glBindTextures" ffiuintsizeiPtruintIOV
	395 -> load' f "glBindVertexBuffers" ffiuintsizeiPtruintPtrintptrPtrsizeiIOV
	396 -> load' f "glMultiDrawArraysIndirect" ffienumPtrVsizeisizeiIOV
	397 -> load' f "glMultiDrawElementsIndirect" ffienumenumPtrVsizeisizeiIOV
	398 -> load' f "glSampleCoverageARB" ffifloatbooleanIOV
	399 -> load' f "glActiveTextureARB" ffienumIOV
	400 -> load' f "glClientActiveTextureARB" ffienumIOV
	401 -> load' f "glMultiTexCoord1dARB" ffienumdoubleIOV
	402 -> load' f "glMultiTexCoord1dvARB" ffienumPtrdoubleIOV
	403 -> load' f "glMultiTexCoord1fARB" ffienumfloatIOV
	404 -> load' f "glMultiTexCoord1fvARB" ffienumPtrfloatIOV
	405 -> load' f "glMultiTexCoord1iARB" ffienumintIOV
	406 -> load' f "glMultiTexCoord1ivARB" ffienumPtrintIOV
	407 -> load' f "glMultiTexCoord1sARB" ffienumshortIOV
	408 -> load' f "glMultiTexCoord1svARB" ffienumPtrshortIOV
	409 -> load' f "glMultiTexCoord2dARB" ffienumdoubledoubleIOV
	410 -> load' f "glMultiTexCoord2dvARB" ffienumPtrdoubleIOV
	411 -> load' f "glMultiTexCoord2fARB" ffienumfloatfloatIOV
	412 -> load' f "glMultiTexCoord2fvARB" ffienumPtrfloatIOV
	413 -> load' f "glMultiTexCoord2iARB" ffienumintintIOV
	414 -> load' f "glMultiTexCoord2ivARB" ffienumPtrintIOV
	415 -> load' f "glMultiTexCoord2sARB" ffienumshortshortIOV
	416 -> load' f "glMultiTexCoord2svARB" ffienumPtrshortIOV
	417 -> load' f "glMultiTexCoord3dARB" ffienumdoubledoubledoubleIOV
	418 -> load' f "glMultiTexCoord3dvARB" ffienumPtrdoubleIOV
	419 -> load' f "glMultiTexCoord3fARB" ffienumfloatfloatfloatIOV
	420 -> load' f "glMultiTexCoord3fvARB" ffienumPtrfloatIOV
	421 -> load' f "glMultiTexCoord3iARB" ffienumintintintIOV
	422 -> load' f "glMultiTexCoord3ivARB" ffienumPtrintIOV
	423 -> load' f "glMultiTexCoord3sARB" ffienumshortshortshortIOV
	424 -> load' f "glMultiTexCoord3svARB" ffienumPtrshortIOV
	425 -> load' f "glMultiTexCoord4dARB" ffienumdoubledoubledoubledoubleIOV
	426 -> load' f "glMultiTexCoord4dvARB" ffienumPtrdoubleIOV
	427 -> load' f "glMultiTexCoord4fARB" ffienumfloatfloatfloatfloatIOV
	428 -> load' f "glMultiTexCoord4fvARB" ffienumPtrfloatIOV
	429 -> load' f "glMultiTexCoord4iARB" ffienumintintintintIOV
	430 -> load' f "glMultiTexCoord4ivARB" ffienumPtrintIOV
	431 -> load' f "glMultiTexCoord4sARB" ffienumshortshortshortshortIOV
	432 -> load' f "glMultiTexCoord4svARB" ffienumPtrshortIOV
	433 -> load' f "glBeginQueryARB" ffienumuintIOV
	434 -> load' f "glDeleteQueriesARB" ffisizeiPtruintIOV
	435 -> load' f "glEndQueryARB" ffienumIOV
	436 -> load' f "glGenQueriesARB" ffisizeiPtruintIOV
	437 -> load' f "glGetQueryObjectivARB" ffiuintenumPtrintIOV
	438 -> load' f "glGetQueryObjectuivARB" ffiuintenumPtruintIOV
	439 -> load' f "glGetQueryivARB" ffienumenumPtrintIOV
	440 -> load' f "glIsQueryARB" ffiuintIOboolean
	441 -> load' f "glPointParameterfARB" ffienumfloatIOV
	442 -> load' f "glPointParameterfvARB" ffienumPtrfloatIOV
	443 -> load' f "glGetProgramInterfaceiv" ffiuintenumenumPtrintIOV
	444 -> load' f "glGetProgramResourceIndex" ffiuintenumPtrcharIOuint
	445 -> load' f "glGetProgramResourceLocation" ffiuintenumPtrcharIOint
	446 -> load' f "glGetProgramResourceLocationIndex" ffiuintenumPtrcharIOint
	447 -> load' f "glGetProgramResourceName" ffiuintenumuintsizeiPtrsizeiPtrcharIOV
	448 -> load' f "glGetProgramResourceiv" ffiuintenumuintsizeiPtrenumsizeiPtrsizeiPtrintIOV
	449 -> load' f "glProvokingVertex" ffienumIOV
	450 -> load' f "glGetGraphicsResetStatusARB" ffiIOenum
	451 -> load' f "glGetnColorTableARB" ffienumenumenumsizeiPtrVIOV
	452 -> load' f "glGetnCompressedTexImageARB" ffienumintsizeiPtrVIOV
	453 -> load' f "glGetnConvolutionFilterARB" ffienumenumenumsizeiPtrVIOV
	454 -> load' f "glGetnHistogramARB" ffienumbooleanenumenumsizeiPtrVIOV
	455 -> load' f "glGetnMapdvARB" ffienumenumsizeiPtrdoubleIOV
	456 -> load' f "glGetnMapfvARB" ffienumenumsizeiPtrfloatIOV
	457 -> load' f "glGetnMapivARB" ffienumenumsizeiPtrintIOV
	458 -> load' f "glGetnMinmaxARB" ffienumbooleanenumenumsizeiPtrVIOV
	459 -> load' f "glGetnPixelMapfvARB" ffienumsizeiPtrfloatIOV
	460 -> load' f "glGetnPixelMapuivARB" ffienumsizeiPtruintIOV
	461 -> load' f "glGetnPixelMapusvARB" ffienumsizeiPtrushortIOV
	462 -> load' f "glGetnPolygonStippleARB" ffisizeiPtrubyteIOV
	463 -> load' f "glGetnSeparableFilterARB" ffienumenumenumsizeiPtrVsizeiPtrVPtrVIOV
	464 -> load' f "glGetnTexImageARB" ffienumintenumenumsizeiPtrVIOV
	465 -> load' f "glGetnUniformdvARB" ffiuintintsizeiPtrdoubleIOV
	466 -> load' f "glGetnUniformfvARB" ffiuintintsizeiPtrfloatIOV
	467 -> load' f "glGetnUniformivARB" ffiuintintsizeiPtrintIOV
	468 -> load' f "glGetnUniformuivARB" ffiuintintsizeiPtruintIOV
	469 -> load' f "glReadnPixelsARB" ffiintintsizeisizeienumenumsizeiPtrVIOV
	470 -> load' f "glMinSampleShadingARB" ffifloatIOV
	471 -> load' f "glBindSampler" ffiuintuintIOV
	472 -> load' f "glDeleteSamplers" ffisizeiPtruintIOV
	473 -> load' f "glGenSamplers" ffisizeiPtruintIOV
	474 -> load' f "glGetSamplerParameterIiv" ffiuintenumPtrintIOV
	475 -> load' f "glGetSamplerParameterIuiv" ffiuintenumPtruintIOV
	476 -> load' f "glGetSamplerParameterfv" ffiuintenumPtrfloatIOV
	477 -> load' f "glGetSamplerParameteriv" ffiuintenumPtrintIOV
	478 -> load' f "glIsSampler" ffiuintIOboolean
	479 -> load' f "glSamplerParameterIiv" ffiuintenumPtrintIOV
	480 -> load' f "glSamplerParameterIuiv" ffiuintenumPtruintIOV
	481 -> load' f "glSamplerParameterf" ffiuintenumfloatIOV
	482 -> load' f "glSamplerParameterfv" ffiuintenumPtrfloatIOV
	483 -> load' f "glSamplerParameteri" ffiuintenumintIOV
	484 -> load' f "glSamplerParameteriv" ffiuintenumPtrintIOV
	485 -> load' f "glActiveShaderProgram" ffiuintuintIOV
	486 -> load' f "glBindProgramPipeline" ffiuintIOV
	487 -> load' f "glCreateShaderProgramv" ffienumsizeiPtrcharIOuint
	488 -> load' f "glDeleteProgramPipelines" ffisizeiPtruintIOV
	489 -> load' f "glGenProgramPipelines" ffisizeiPtruintIOV
	490 -> load' f "glGetProgramPipelineInfoLog" ffiuintsizeiPtrsizeiPtrcharIOV
	491 -> load' f "glGetProgramPipelineiv" ffiuintenumPtrintIOV
	492 -> load' f "glIsProgramPipeline" ffiuintIOboolean
	493 -> load' f "glProgramUniform1d" ffiuintintdoubleIOV
	494 -> load' f "glProgramUniform1dv" ffiuintintsizeiPtrdoubleIOV
	495 -> load' f "glProgramUniform1f" ffiuintintfloatIOV
	496 -> load' f "glProgramUniform1fv" ffiuintintsizeiPtrfloatIOV
	497 -> load' f "glProgramUniform1i" ffiuintintintIOV
	498 -> load' f "glProgramUniform1iv" ffiuintintsizeiPtrintIOV
	499 -> load' f "glProgramUniform1ui" ffiuintintuintIOV
	500 -> load' f "glProgramUniform1uiv" ffiuintintsizeiPtruintIOV
	501 -> load' f "glProgramUniform2d" ffiuintintdoubledoubleIOV
	502 -> load' f "glProgramUniform2dv" ffiuintintsizeiPtrdoubleIOV
	503 -> load' f "glProgramUniform2f" ffiuintintfloatfloatIOV
	504 -> load' f "glProgramUniform2fv" ffiuintintsizeiPtrfloatIOV
	505 -> load' f "glProgramUniform2i" ffiuintintintintIOV
	506 -> load' f "glProgramUniform2iv" ffiuintintsizeiPtrintIOV
	507 -> load' f "glProgramUniform2ui" ffiuintintuintuintIOV
	508 -> load' f "glProgramUniform2uiv" ffiuintintsizeiPtruintIOV
	509 -> load' f "glProgramUniform3d" ffiuintintdoubledoubledoubleIOV
	510 -> load' f "glProgramUniform3dv" ffiuintintsizeiPtrdoubleIOV
	511 -> load' f "glProgramUniform3f" ffiuintintfloatfloatfloatIOV
	512 -> load' f "glProgramUniform3fv" ffiuintintsizeiPtrfloatIOV
	513 -> load' f "glProgramUniform3i" ffiuintintintintintIOV
	514 -> load' f "glProgramUniform3iv" ffiuintintsizeiPtrintIOV
	515 -> load' f "glProgramUniform3ui" ffiuintintuintuintuintIOV
	516 -> load' f "glProgramUniform3uiv" ffiuintintsizeiPtruintIOV
	517 -> load' f "glProgramUniform4d" ffiuintintdoubledoubledoubledoubleIOV
	518 -> load' f "glProgramUniform4dv" ffiuintintsizeiPtrdoubleIOV
	519 -> load' f "glProgramUniform4f" ffiuintintfloatfloatfloatfloatIOV
	520 -> load' f "glProgramUniform4fv" ffiuintintsizeiPtrfloatIOV
	521 -> load' f "glProgramUniform4i" ffiuintintintintintintIOV
	522 -> load' f "glProgramUniform4iv" ffiuintintsizeiPtrintIOV
	523 -> load' f "glProgramUniform4ui" ffiuintintuintuintuintuintIOV
	524 -> load' f "glProgramUniform4uiv" ffiuintintsizeiPtruintIOV
	525 -> load' f "glProgramUniformMatrix2dv" ffiuintintsizeibooleanPtrdoubleIOV
	526 -> load' f "glProgramUniformMatrix2fv" ffiuintintsizeibooleanPtrfloatIOV
	527 -> load' f "glProgramUniformMatrix2x3dv" ffiuintintsizeibooleanPtrdoubleIOV
	528 -> load' f "glProgramUniformMatrix2x3fv" ffiuintintsizeibooleanPtrfloatIOV
	529 -> load' f "glProgramUniformMatrix2x4dv" ffiuintintsizeibooleanPtrdoubleIOV
	530 -> load' f "glProgramUniformMatrix2x4fv" ffiuintintsizeibooleanPtrfloatIOV
	531 -> load' f "glProgramUniformMatrix3dv" ffiuintintsizeibooleanPtrdoubleIOV
	532 -> load' f "glProgramUniformMatrix3fv" ffiuintintsizeibooleanPtrfloatIOV
	533 -> load' f "glProgramUniformMatrix3x2dv" ffiuintintsizeibooleanPtrdoubleIOV
	534 -> load' f "glProgramUniformMatrix3x2fv" ffiuintintsizeibooleanPtrfloatIOV
	535 -> load' f "glProgramUniformMatrix3x4dv" ffiuintintsizeibooleanPtrdoubleIOV
	536 -> load' f "glProgramUniformMatrix3x4fv" ffiuintintsizeibooleanPtrfloatIOV
	537 -> load' f "glProgramUniformMatrix4dv" ffiuintintsizeibooleanPtrdoubleIOV
	538 -> load' f "glProgramUniformMatrix4fv" ffiuintintsizeibooleanPtrfloatIOV
	539 -> load' f "glProgramUniformMatrix4x2dv" ffiuintintsizeibooleanPtrdoubleIOV
	540 -> load' f "glProgramUniformMatrix4x2fv" ffiuintintsizeibooleanPtrfloatIOV
	541 -> load' f "glProgramUniformMatrix4x3dv" ffiuintintsizeibooleanPtrdoubleIOV
	542 -> load' f "glProgramUniformMatrix4x3fv" ffiuintintsizeibooleanPtrfloatIOV
	543 -> load' f "glUseProgramStages" ffiuintbitfielduintIOV
	544 -> load' f "glValidateProgramPipeline" ffiuintIOV
	545 -> load' f "glGetActiveAtomicCounterBufferiv" ffiuintuintenumPtrintIOV
	546 -> load' f "glBindImageTexture" ffiuintuintintbooleanintenumenumIOV
	547 -> load' f "glMemoryBarrier" ffibitfieldIOV
	548 -> load' f "glAttachObjectARB" ffihandleARBhandleARBIOV
	549 -> load' f "glCompileShaderARB" ffihandleARBIOV
	550 -> load' f "glCreateProgramObjectARB" ffiIOhandleARB
	551 -> load' f "glCreateShaderObjectARB" ffienumIOhandleARB
	552 -> load' f "glDeleteObjectARB" ffihandleARBIOV
	553 -> load' f "glDetachObjectARB" ffihandleARBhandleARBIOV
	554 -> load' f "glGetActiveUniformARB" ffihandleARBuintsizeiPtrsizeiPtrintPtrenumPtrcharARBIOV
	555 -> load' f "glGetAttachedObjectsARB" ffihandleARBsizeiPtrsizeiPtrhandleARBIOV
	556 -> load' f "glGetHandleARB" ffienumIOhandleARB
	557 -> load' f "glGetInfoLogARB" ffihandleARBsizeiPtrsizeiPtrcharARBIOV
	558 -> load' f "glGetObjectParameterfvARB" ffihandleARBenumPtrfloatIOV
	559 -> load' f "glGetObjectParameterivARB" ffihandleARBenumPtrintIOV
	560 -> load' f "glGetShaderSourceARB" ffihandleARBsizeiPtrsizeiPtrcharARBIOV
	561 -> load' f "glGetUniformLocationARB" ffihandleARBPtrcharARBIOint
	562 -> load' f "glGetUniformfvARB" ffihandleARBintPtrfloatIOV
	563 -> load' f "glGetUniformivARB" ffihandleARBintPtrintIOV
	564 -> load' f "glLinkProgramARB" ffihandleARBIOV
	565 -> load' f "glShaderSourceARB" ffihandleARBsizeiPtrcharARBPtrintIOV
	566 -> load' f "glUniform1fARB" ffiintfloatIOV
	567 -> load' f "glUniform1fvARB" ffiintsizeiPtrfloatIOV
	568 -> load' f "glUniform1iARB" ffiintintIOV
	569 -> load' f "glUniform1ivARB" ffiintsizeiPtrintIOV
	570 -> load' f "glUniform2fARB" ffiintfloatfloatIOV
	571 -> load' f "glUniform2fvARB" ffiintsizeiPtrfloatIOV
	572 -> load' f "glUniform2iARB" ffiintintintIOV
	573 -> load' f "glUniform2ivARB" ffiintsizeiPtrintIOV
	574 -> load' f "glUniform3fARB" ffiintfloatfloatfloatIOV
	575 -> load' f "glUniform3fvARB" ffiintsizeiPtrfloatIOV
	576 -> load' f "glUniform3iARB" ffiintintintintIOV
	577 -> load' f "glUniform3ivARB" ffiintsizeiPtrintIOV
	578 -> load' f "glUniform4fARB" ffiintfloatfloatfloatfloatIOV
	579 -> load' f "glUniform4fvARB" ffiintsizeiPtrfloatIOV
	580 -> load' f "glUniform4iARB" ffiintintintintintIOV
	581 -> load' f "glUniform4ivARB" ffiintsizeiPtrintIOV
	582 -> load' f "glUniformMatrix2fvARB" ffiintsizeibooleanPtrfloatIOV
	583 -> load' f "glUniformMatrix3fvARB" ffiintsizeibooleanPtrfloatIOV
	584 -> load' f "glUniformMatrix4fvARB" ffiintsizeibooleanPtrfloatIOV
	585 -> load' f "glUseProgramObjectARB" ffihandleARBIOV
	586 -> load' f "glValidateProgramARB" ffihandleARBIOV
	587 -> load' f "glShaderStorageBlockBinding" ffiuintuintuintIOV
	588 -> load' f "glGetActiveSubroutineName" ffiuintenumuintsizeiPtrsizeiPtrcharIOV
	589 -> load' f "glGetActiveSubroutineUniformName" ffiuintenumuintsizeiPtrsizeiPtrcharIOV
	590 -> load' f "glGetActiveSubroutineUniformiv" ffiuintenumuintenumPtrintIOV
	591 -> load' f "glGetProgramStageiv" ffiuintenumenumPtrintIOV
	592 -> load' f "glGetSubroutineIndex" ffiuintenumPtrcharIOuint
	593 -> load' f "glGetSubroutineUniformLocation" ffiuintenumPtrcharIOint
	594 -> load' f "glGetUniformSubroutineuiv" ffienumintPtruintIOV
	595 -> load' f "glUniformSubroutinesuiv" ffienumsizeiPtruintIOV
	596 -> load' f "glCompileShaderIncludeARB" ffiuintsizeiPtrcharPtrintIOV
	597 -> load' f "glDeleteNamedStringARB" ffiintPtrcharIOV
	598 -> load' f "glGetNamedStringARB" ffiintPtrcharsizeiPtrintPtrcharIOV
	599 -> load' f "glGetNamedStringivARB" ffiintPtrcharenumPtrintIOV
	600 -> load' f "glIsNamedStringARB" ffiintPtrcharIOboolean
	601 -> load' f "glNamedStringARB" ffienumintPtrcharintPtrcharIOV
	602 -> load' f "glBufferPageCommitmentARB" ffienumintptrsizeiptrbooleanIOV
	603 -> load' f "glNamedBufferPageCommitmentARB" ffiuintintptrsizeiptrbooleanIOV
	604 -> load' f "glNamedBufferPageCommitmentEXT" ffiuintintptrsizeiptrbooleanIOV
	605 -> load' f "glTexPageCommitmentARB" ffienumintintintintsizeisizeisizeibooleanIOV
	606 -> load' f "glClientWaitSync" ffisyncbitfielduint64IOenum
	607 -> load' f "glDeleteSync" ffisyncIOV
	608 -> load' f "glFenceSync" ffienumbitfieldIOsync
	609 -> load' f "glGetInteger64v" ffienumPtrint64IOV
	610 -> load' f "glGetSynciv" ffisyncenumsizeiPtrsizeiPtrintIOV
	611 -> load' f "glIsSync" ffisyncIOboolean
	612 -> load' f "glWaitSync" ffisyncbitfielduint64IOV
	613 -> load' f "glPatchParameterfv" ffienumPtrfloatIOV
	614 -> load' f "glPatchParameteri" ffienumintIOV
	615 -> load' f "glTextureBarrier" ffiIOV
	616 -> load' f "glTexBufferARB" ffienumenumuintIOV
	617 -> load' f "glTexBufferRange" ffienumenumuintintptrsizeiptrIOV
	618 -> load' f "glCompressedTexImage1DARB" ffienumintenumsizeiintsizeiPtrVIOV
	619 -> load' f "glCompressedTexImage2DARB" ffienumintenumsizeisizeiintsizeiPtrVIOV
	620 -> load' f "glCompressedTexImage3DARB" ffienumintenumsizeisizeisizeiintsizeiPtrVIOV
	621 -> load' f "glCompressedTexSubImage1DARB" ffienumintintsizeienumsizeiPtrVIOV
	622 -> load' f "glCompressedTexSubImage2DARB" ffienumintintintsizeisizeienumsizeiPtrVIOV
	623 -> load' f "glCompressedTexSubImage3DARB" ffienumintintintintsizeisizeisizeienumsizeiPtrVIOV
	624 -> load' f "glGetCompressedTexImageARB" ffienumintPtrVIOV
	625 -> load' f "glGetMultisamplefv" ffienumuintPtrfloatIOV
	626 -> load' f "glSampleMaski" ffiuintbitfieldIOV
	627 -> load' f "glTexImage2DMultisample" ffienumsizeienumsizeisizeibooleanIOV
	628 -> load' f "glTexImage3DMultisample" ffienumsizeienumsizeisizeisizeibooleanIOV
	629 -> load' f "glTexStorage1D" ffienumsizeienumsizeiIOV
	630 -> load' f "glTexStorage2D" ffienumsizeienumsizeisizeiIOV
	631 -> load' f "glTexStorage3D" ffienumsizeienumsizeisizeisizeiIOV
	632 -> load' f "glTexStorage2DMultisample" ffienumsizeienumsizeisizeibooleanIOV
	633 -> load' f "glTexStorage3DMultisample" ffienumsizeienumsizeisizeisizeibooleanIOV
	634 -> load' f "glTextureView" ffiuintenumuintenumuintuintuintuintIOV
	635 -> load' f "glGetQueryObjecti64v" ffiuintenumPtrint64IOV
	636 -> load' f "glGetQueryObjectui64v" ffiuintenumPtruint64IOV
	637 -> load' f "glQueryCounter" ffiuintenumIOV
	638 -> load' f "glBindTransformFeedback" ffienumuintIOV
	639 -> load' f "glDeleteTransformFeedbacks" ffisizeiPtruintIOV
	640 -> load' f "glDrawTransformFeedback" ffienumuintIOV
	641 -> load' f "glGenTransformFeedbacks" ffisizeiPtruintIOV
	642 -> load' f "glIsTransformFeedback" ffiuintIOboolean
	643 -> load' f "glPauseTransformFeedback" ffiIOV
	644 -> load' f "glResumeTransformFeedback" ffiIOV
	645 -> load' f "glBeginQueryIndexed" ffienumuintuintIOV
	646 -> load' f "glDrawTransformFeedbackStream" ffienumuintuintIOV
	647 -> load' f "glEndQueryIndexed" ffienumuintIOV
	648 -> load' f "glGetQueryIndexediv" ffienumuintenumPtrintIOV
	649 -> load' f "glDrawTransformFeedbackInstanced" ffienumuintsizeiIOV
	650 -> load' f "glDrawTransformFeedbackStreamInstanced" ffienumuintuintsizeiIOV
	651 -> load' f "glLoadTransposeMatrixdARB" ffiPtrdoubleIOV
	652 -> load' f "glLoadTransposeMatrixfARB" ffiPtrfloatIOV
	653 -> load' f "glMultTransposeMatrixdARB" ffiPtrdoubleIOV
	654 -> load' f "glMultTransposeMatrixfARB" ffiPtrfloatIOV
	655 -> load' f "glGetActiveUniformBlockName" ffiuintuintsizeiPtrsizeiPtrcharIOV
	656 -> load' f "glGetActiveUniformBlockiv" ffiuintuintenumPtrintIOV
	657 -> load' f "glGetActiveUniformName" ffiuintuintsizeiPtrsizeiPtrcharIOV
	658 -> load' f "glGetActiveUniformsiv" ffiuintsizeiPtruintenumPtrintIOV
	659 -> load' f "glGetUniformBlockIndex" ffiuintPtrcharIOuint
	660 -> load' f "glGetUniformIndices" ffiuintsizeiPtrcharPtruintIOV
	661 -> load' f "glUniformBlockBinding" ffiuintuintuintIOV
	662 -> load' f "glBindVertexArray" ffiuintIOV
	663 -> load' f "glDeleteVertexArrays" ffisizeiPtruintIOV
	664 -> load' f "glGenVertexArrays" ffisizeiPtruintIOV
	665 -> load' f "glIsVertexArray" ffiuintIOboolean
	666 -> load' f "glGetVertexAttribLdv" ffiuintenumPtrdoubleIOV
	667 -> load' f "glVertexAttribL1d" ffiuintdoubleIOV
	668 -> load' f "glVertexAttribL1dv" ffiuintPtrdoubleIOV
	669 -> load' f "glVertexAttribL2d" ffiuintdoubledoubleIOV
	670 -> load' f "glVertexAttribL2dv" ffiuintPtrdoubleIOV
	671 -> load' f "glVertexAttribL3d" ffiuintdoubledoubledoubleIOV
	672 -> load' f "glVertexAttribL3dv" ffiuintPtrdoubleIOV
	673 -> load' f "glVertexAttribL4d" ffiuintdoubledoubledoubledoubleIOV
	674 -> load' f "glVertexAttribL4dv" ffiuintPtrdoubleIOV
	675 -> load' f "glVertexAttribLPointer" ffiuintintenumsizeiPtrVIOV
	676 -> load' f "glBindVertexBuffer" ffiuintuintintptrsizeiIOV
	677 -> load' f "glVertexAttribBinding" ffiuintuintIOV
	678 -> load' f "glVertexAttribFormat" ffiuintintenumbooleanuintIOV
	679 -> load' f "glVertexAttribIFormat" ffiuintintenumuintIOV
	680 -> load' f "glVertexAttribLFormat" ffiuintintenumuintIOV
	681 -> load' f "glVertexBindingDivisor" ffiuintuintIOV
	682 -> load' f "glVertexBlendARB" ffiintIOV
	683 -> load' f "glWeightPointerARB" ffiintenumsizeiPtrVIOV
	684 -> load' f "glWeightbvARB" ffiintPtrbyteIOV
	685 -> load' f "glWeightdvARB" ffiintPtrdoubleIOV
	686 -> load' f "glWeightfvARB" ffiintPtrfloatIOV
	687 -> load' f "glWeightivARB" ffiintPtrintIOV
	688 -> load' f "glWeightsvARB" ffiintPtrshortIOV
	689 -> load' f "glWeightubvARB" ffiintPtrubyteIOV
	690 -> load' f "glWeightuivARB" ffiintPtruintIOV
	691 -> load' f "glWeightusvARB" ffiintPtrushortIOV
	692 -> load' f "glBindBufferARB" ffienumuintIOV
	693 -> load' f "glBufferDataARB" ffienumsizeiptrARBPtrVenumIOV
	694 -> load' f "glBufferSubDataARB" ffienumintptrARBsizeiptrARBPtrVIOV
	695 -> load' f "glDeleteBuffersARB" ffisizeiPtruintIOV
	696 -> load' f "glGenBuffersARB" ffisizeiPtruintIOV
	697 -> load' f "glGetBufferParameterivARB" ffienumenumPtrintIOV
	698 -> load' f "glGetBufferPointervARB" ffienumenumPtrVIOV
	699 -> load' f "glGetBufferSubDataARB" ffienumintptrARBsizeiptrARBPtrVIOV
	700 -> load' f "glIsBufferARB" ffiuintIOboolean
	701 -> load' f "glMapBufferARB" ffienumenumIOPtrV
	702 -> load' f "glUnmapBufferARB" ffienumIOboolean
	703 -> load' f "glDisableVertexAttribArrayARB" ffiuintIOV
	704 -> load' f "glEnableVertexAttribArrayARB" ffiuintIOV
	705 -> load' f "glGetVertexAttribPointervARB" ffiuintenumPtrVIOV
	706 -> load' f "glGetVertexAttribdvARB" ffiuintenumPtrdoubleIOV
	707 -> load' f "glGetVertexAttribfvARB" ffiuintenumPtrfloatIOV
	708 -> load' f "glGetVertexAttribivARB" ffiuintenumPtrintIOV
	709 -> load' f "glVertexAttrib1dARB" ffiuintdoubleIOV
	710 -> load' f "glVertexAttrib1dvARB" ffiuintPtrdoubleIOV
	711 -> load' f "glVertexAttrib1fARB" ffiuintfloatIOV
	712 -> load' f "glVertexAttrib1fvARB" ffiuintPtrfloatIOV
	713 -> load' f "glVertexAttrib1sARB" ffiuintshortIOV
	714 -> load' f "glVertexAttrib1svARB" ffiuintPtrshortIOV
	715 -> load' f "glVertexAttrib2dARB" ffiuintdoubledoubleIOV
	716 -> load' f "glVertexAttrib2dvARB" ffiuintPtrdoubleIOV
	717 -> load' f "glVertexAttrib2fARB" ffiuintfloatfloatIOV
	718 -> load' f "glVertexAttrib2fvARB" ffiuintPtrfloatIOV
	719 -> load' f "glVertexAttrib2sARB" ffiuintshortshortIOV
	720 -> load' f "glVertexAttrib2svARB" ffiuintPtrshortIOV
	721 -> load' f "glVertexAttrib3dARB" ffiuintdoubledoubledoubleIOV
	722 -> load' f "glVertexAttrib3dvARB" ffiuintPtrdoubleIOV
	723 -> load' f "glVertexAttrib3fARB" ffiuintfloatfloatfloatIOV
	724 -> load' f "glVertexAttrib3fvARB" ffiuintPtrfloatIOV
	725 -> load' f "glVertexAttrib3sARB" ffiuintshortshortshortIOV
	726 -> load' f "glVertexAttrib3svARB" ffiuintPtrshortIOV
	727 -> load' f "glVertexAttrib4NbvARB" ffiuintPtrbyteIOV
	728 -> load' f "glVertexAttrib4NivARB" ffiuintPtrintIOV
	729 -> load' f "glVertexAttrib4NsvARB" ffiuintPtrshortIOV
	730 -> load' f "glVertexAttrib4NubARB" ffiuintubyteubyteubyteubyteIOV
	731 -> load' f "glVertexAttrib4NubvARB" ffiuintPtrubyteIOV
	732 -> load' f "glVertexAttrib4NuivARB" ffiuintPtruintIOV
	733 -> load' f "glVertexAttrib4NusvARB" ffiuintPtrushortIOV
	734 -> load' f "glVertexAttrib4bvARB" ffiuintPtrbyteIOV
	735 -> load' f "glVertexAttrib4dARB" ffiuintdoubledoubledoubledoubleIOV
	736 -> load' f "glVertexAttrib4dvARB" ffiuintPtrdoubleIOV
	737 -> load' f "glVertexAttrib4fARB" ffiuintfloatfloatfloatfloatIOV
	738 -> load' f "glVertexAttrib4fvARB" ffiuintPtrfloatIOV
	739 -> load' f "glVertexAttrib4ivARB" ffiuintPtrintIOV
	740 -> load' f "glVertexAttrib4sARB" ffiuintshortshortshortshortIOV
	741 -> load' f "glVertexAttrib4svARB" ffiuintPtrshortIOV
	742 -> load' f "glVertexAttrib4ubvARB" ffiuintPtrubyteIOV
	743 -> load' f "glVertexAttrib4uivARB" ffiuintPtruintIOV
	744 -> load' f "glVertexAttrib4usvARB" ffiuintPtrushortIOV
	745 -> load' f "glVertexAttribPointerARB" ffiuintintenumbooleansizeiPtrVIOV
	746 -> load' f "glBindAttribLocationARB" ffihandleARBuintPtrcharARBIOV
	747 -> load' f "glGetActiveAttribARB" ffihandleARBuintsizeiPtrsizeiPtrintPtrenumPtrcharARBIOV
	748 -> load' f "glGetAttribLocationARB" ffihandleARBPtrcharARBIOint
	749 -> load' f "glColorP3ui" ffienumuintIOV
	750 -> load' f "glColorP3uiv" ffienumPtruintIOV
	751 -> load' f "glColorP4ui" ffienumuintIOV
	752 -> load' f "glColorP4uiv" ffienumPtruintIOV
	753 -> load' f "glMultiTexCoordP1ui" ffienumenumuintIOV
	754 -> load' f "glMultiTexCoordP1uiv" ffienumenumPtruintIOV
	755 -> load' f "glMultiTexCoordP2ui" ffienumenumuintIOV
	756 -> load' f "glMultiTexCoordP2uiv" ffienumenumPtruintIOV
	757 -> load' f "glMultiTexCoordP3ui" ffienumenumuintIOV
	758 -> load' f "glMultiTexCoordP3uiv" ffienumenumPtruintIOV
	759 -> load' f "glMultiTexCoordP4ui" ffienumenumuintIOV
	760 -> load' f "glMultiTexCoordP4uiv" ffienumenumPtruintIOV
	761 -> load' f "glNormalP3ui" ffienumuintIOV
	762 -> load' f "glNormalP3uiv" ffienumPtruintIOV
	763 -> load' f "glSecondaryColorP3ui" ffienumuintIOV
	764 -> load' f "glSecondaryColorP3uiv" ffienumPtruintIOV
	765 -> load' f "glTexCoordP1ui" ffienumuintIOV
	766 -> load' f "glTexCoordP1uiv" ffienumPtruintIOV
	767 -> load' f "glTexCoordP2ui" ffienumuintIOV
	768 -> load' f "glTexCoordP2uiv" ffienumPtruintIOV
	769 -> load' f "glTexCoordP3ui" ffienumuintIOV
	770 -> load' f "glTexCoordP3uiv" ffienumPtruintIOV
	771 -> load' f "glTexCoordP4ui" ffienumuintIOV
	772 -> load' f "glTexCoordP4uiv" ffienumPtruintIOV
	773 -> load' f "glVertexAttribP1ui" ffiuintenumbooleanuintIOV
	774 -> load' f "glVertexAttribP1uiv" ffiuintenumbooleanPtruintIOV
	775 -> load' f "glVertexAttribP2ui" ffiuintenumbooleanuintIOV
	776 -> load' f "glVertexAttribP2uiv" ffiuintenumbooleanPtruintIOV
	777 -> load' f "glVertexAttribP3ui" ffiuintenumbooleanuintIOV
	778 -> load' f "glVertexAttribP3uiv" ffiuintenumbooleanPtruintIOV
	779 -> load' f "glVertexAttribP4ui" ffiuintenumbooleanuintIOV
	780 -> load' f "glVertexAttribP4uiv" ffiuintenumbooleanPtruintIOV
	781 -> load' f "glVertexP2ui" ffienumuintIOV
	782 -> load' f "glVertexP2uiv" ffienumPtruintIOV
	783 -> load' f "glVertexP3ui" ffienumuintIOV
	784 -> load' f "glVertexP3uiv" ffienumPtruintIOV
	785 -> load' f "glVertexP4ui" ffienumuintIOV
	786 -> load' f "glVertexP4uiv" ffienumPtruintIOV
	787 -> load' f "glDepthRangeArrayv" ffiuintsizeiPtrdoubleIOV
	788 -> load' f "glDepthRangeIndexed" ffiuintdoubledoubleIOV
	789 -> load' f "glGetDoublei_v" ffienumuintPtrdoubleIOV
	790 -> load' f "glGetFloati_v" ffienumuintPtrfloatIOV
	791 -> load' f "glScissorArrayv" ffiuintsizeiPtrintIOV
	792 -> load' f "glScissorIndexed" ffiuintintintsizeisizeiIOV
	793 -> load' f "glScissorIndexedv" ffiuintPtrintIOV
	794 -> load' f "glViewportArrayv" ffiuintsizeiPtrfloatIOV
	795 -> load' f "glViewportIndexedf" ffiuintfloatfloatfloatfloatIOV
	796 -> load' f "glViewportIndexedfv" ffiuintPtrfloatIOV
	797 -> load' f "glWindowPos2dARB" ffidoubledoubleIOV
	798 -> load' f "glWindowPos2dvARB" ffiPtrdoubleIOV
	799 -> load' f "glWindowPos2fARB" ffifloatfloatIOV
	800 -> load' f "glWindowPos2fvARB" ffiPtrfloatIOV
	801 -> load' f "glWindowPos2iARB" ffiintintIOV
	802 -> load' f "glWindowPos2ivARB" ffiPtrintIOV
	803 -> load' f "glWindowPos2sARB" ffishortshortIOV
	804 -> load' f "glWindowPos2svARB" ffiPtrshortIOV
	805 -> load' f "glWindowPos3dARB" ffidoubledoubledoubleIOV
	806 -> load' f "glWindowPos3dvARB" ffiPtrdoubleIOV
	807 -> load' f "glWindowPos3fARB" ffifloatfloatfloatIOV
	808 -> load' f "glWindowPos3fvARB" ffiPtrfloatIOV
	809 -> load' f "glWindowPos3iARB" ffiintintintIOV
	810 -> load' f "glWindowPos3ivARB" ffiPtrintIOV
	811 -> load' f "glWindowPos3sARB" ffishortshortshortIOV
	812 -> load' f "glWindowPos3svARB" ffiPtrshortIOV
	813 -> load' f "glDrawBuffersATI" ffisizeiPtrenumIOV
	814 -> load' f "glDrawElementArrayATI" ffienumsizeiIOV
	815 -> load' f "glDrawRangeElementArrayATI" ffienumuintuintsizeiIOV
	816 -> load' f "glElementPointerATI" ffienumPtrVIOV
	817 -> load' f "glGetTexBumpParameterfvATI" ffienumPtrfloatIOV
	818 -> load' f "glGetTexBumpParameterivATI" ffienumPtrintIOV
	819 -> load' f "glTexBumpParameterfvATI" ffienumPtrfloatIOV
	820 -> load' f "glTexBumpParameterivATI" ffienumPtrintIOV
	821 -> load' f "glAlphaFragmentOp1ATI" ffienumuintuintuintuintuintIOV
	822 -> load' f "glAlphaFragmentOp2ATI" ffienumuintuintuintuintuintuintuintuintIOV
	823 -> load' f "glAlphaFragmentOp3ATI" ffienumuintuintuintuintuintuintuintuintuintuintuintIOV
	824 -> load' f "glBeginFragmentShaderATI" ffiIOV
	825 -> load' f "glBindFragmentShaderATI" ffiuintIOV
	826 -> load' f "glColorFragmentOp1ATI" ffienumuintuintuintuintuintuintIOV
	827 -> load' f "glColorFragmentOp2ATI" ffienumuintuintuintuintuintuintuintuintuintIOV
	828 -> load' f "glColorFragmentOp3ATI" ffienumuintuintuintuintuintuintuintuintuintuintuintuintIOV
	829 -> load' f "glDeleteFragmentShaderATI" ffiuintIOV
	830 -> load' f "glEndFragmentShaderATI" ffiIOV
	831 -> load' f "glGenFragmentShadersATI" ffiuintIOuint
	832 -> load' f "glPassTexCoordATI" ffiuintuintenumIOV
	833 -> load' f "glSampleMapATI" ffiuintuintenumIOV
	834 -> load' f "glSetFragmentShaderConstantATI" ffiuintPtrfloatIOV
	835 -> load' f "glMapObjectBufferATI" ffiuintIOPtrV
	836 -> load' f "glUnmapObjectBufferATI" ffiuintIOV
	837 -> load' f "glPNTrianglesfATI" ffienumfloatIOV
	838 -> load' f "glPNTrianglesiATI" ffienumintIOV
	839 -> load' f "glStencilFuncSeparateATI" ffienumenumintuintIOV
	840 -> load' f "glStencilOpSeparateATI" ffienumenumenumenumIOV
	841 -> load' f "glArrayObjectATI" ffienumintenumsizeiuintuintIOV
	842 -> load' f "glFreeObjectBufferATI" ffiuintIOV
	843 -> load' f "glGetArrayObjectfvATI" ffienumenumPtrfloatIOV
	844 -> load' f "glGetArrayObjectivATI" ffienumenumPtrintIOV
	845 -> load' f "glGetObjectBufferfvATI" ffiuintenumPtrfloatIOV
	846 -> load' f "glGetObjectBufferivATI" ffiuintenumPtrintIOV
	847 -> load' f "glGetVariantArrayObjectfvATI" ffiuintenumPtrfloatIOV
	848 -> load' f "glGetVariantArrayObjectivATI" ffiuintenumPtrintIOV
	849 -> load' f "glIsObjectBufferATI" ffiuintIOboolean
	850 -> load' f "glNewObjectBufferATI" ffisizeiPtrVenumIOuint
	851 -> load' f "glUpdateObjectBufferATI" ffiuintuintsizeiPtrVenumIOV
	852 -> load' f "glVariantArrayObjectATI" ffiuintenumsizeiuintuintIOV
	853 -> load' f "glGetVertexAttribArrayObjectfvATI" ffiuintenumPtrfloatIOV
	854 -> load' f "glGetVertexAttribArrayObjectivATI" ffiuintenumPtrintIOV
	855 -> load' f "glVertexAttribArrayObjectATI" ffiuintintenumbooleansizeiuintuintIOV
	856 -> load' f "glClientActiveVertexStreamATI" ffienumIOV
	857 -> load' f "glNormalStream3bATI" ffienumbytebytebyteIOV
	858 -> load' f "glNormalStream3bvATI" ffienumPtrbyteIOV
	859 -> load' f "glNormalStream3dATI" ffienumdoubledoubledoubleIOV
	860 -> load' f "glNormalStream3dvATI" ffienumPtrdoubleIOV
	861 -> load' f "glNormalStream3fATI" ffienumfloatfloatfloatIOV
	862 -> load' f "glNormalStream3fvATI" ffienumPtrfloatIOV
	863 -> load' f "glNormalStream3iATI" ffienumintintintIOV
	864 -> load' f "glNormalStream3ivATI" ffienumPtrintIOV
	865 -> load' f "glNormalStream3sATI" ffienumshortshortshortIOV
	866 -> load' f "glNormalStream3svATI" ffienumPtrshortIOV
	867 -> load' f "glVertexBlendEnvfATI" ffienumfloatIOV
	868 -> load' f "glVertexBlendEnviATI" ffienumintIOV
	869 -> load' f "glVertexStream1dATI" ffienumdoubleIOV
	870 -> load' f "glVertexStream1dvATI" ffienumPtrdoubleIOV
	871 -> load' f "glVertexStream1fATI" ffienumfloatIOV
	872 -> load' f "glVertexStream1fvATI" ffienumPtrfloatIOV
	873 -> load' f "glVertexStream1iATI" ffienumintIOV
	874 -> load' f "glVertexStream1ivATI" ffienumPtrintIOV
	875 -> load' f "glVertexStream1sATI" ffienumshortIOV
	876 -> load' f "glVertexStream1svATI" ffienumPtrshortIOV
	877 -> load' f "glVertexStream2dATI" ffienumdoubledoubleIOV
	878 -> load' f "glVertexStream2dvATI" ffienumPtrdoubleIOV
	879 -> load' f "glVertexStream2fATI" ffienumfloatfloatIOV
	880 -> load' f "glVertexStream2fvATI" ffienumPtrfloatIOV
	881 -> load' f "glVertexStream2iATI" ffienumintintIOV
	882 -> load' f "glVertexStream2ivATI" ffienumPtrintIOV
	883 -> load' f "glVertexStream2sATI" ffienumshortshortIOV
	884 -> load' f "glVertexStream2svATI" ffienumPtrshortIOV
	885 -> load' f "glVertexStream3dATI" ffienumdoubledoubledoubleIOV
	886 -> load' f "glVertexStream3dvATI" ffienumPtrdoubleIOV
	887 -> load' f "glVertexStream3fATI" ffienumfloatfloatfloatIOV
	888 -> load' f "glVertexStream3fvATI" ffienumPtrfloatIOV
	889 -> load' f "glVertexStream3iATI" ffienumintintintIOV
	890 -> load' f "glVertexStream3ivATI" ffienumPtrintIOV
	891 -> load' f "glVertexStream3sATI" ffienumshortshortshortIOV
	892 -> load' f "glVertexStream3svATI" ffienumPtrshortIOV
	893 -> load' f "glVertexStream4dATI" ffienumdoubledoubledoubledoubleIOV
	894 -> load' f "glVertexStream4dvATI" ffienumPtrdoubleIOV
	895 -> load' f "glVertexStream4fATI" ffienumfloatfloatfloatfloatIOV
	896 -> load' f "glVertexStream4fvATI" ffienumPtrfloatIOV
	897 -> load' f "glVertexStream4iATI" ffienumintintintintIOV
	898 -> load' f "glVertexStream4ivATI" ffienumPtrintIOV
	899 -> load' f "glVertexStream4sATI" ffienumshortshortshortshortIOV
	900 -> load' f "glVertexStream4svATI" ffienumPtrshortIOV
	901 -> load' f "glGetUniformBufferSizeEXT" ffiuintintIOint
	902 -> load' f "glGetUniformOffsetEXT" ffiuintintIOintptr
	903 -> load' f "glUniformBufferEXT" ffiuintintuintIOV
	904 -> load' f "glBlendColorEXT" ffifloatfloatfloatfloatIOV
	905 -> load' f "glBlendEquationSeparateEXT" ffienumenumIOV
	906 -> load' f "glBlendFuncSeparateEXT" ffienumenumenumenumIOV
	907 -> load' f "glBlendEquationEXT" ffienumIOV
	908 -> load' f "glColorSubTableEXT" ffienumsizeisizeienumenumPtrVIOV
	909 -> load' f "glCopyColorSubTableEXT" ffienumsizeiintintsizeiIOV
	910 -> load' f "glLockArraysEXT" ffiintsizeiIOV
	911 -> load' f "glUnlockArraysEXT" ffiIOV
	912 -> load' f "glConvolutionFilter1DEXT" ffienumenumsizeienumenumPtrVIOV
	913 -> load' f "glConvolutionFilter2DEXT" ffienumenumsizeisizeienumenumPtrVIOV
	914 -> load' f "glConvolutionParameterfEXT" ffienumenumfloatIOV
	915 -> load' f "glConvolutionParameterfvEXT" ffienumenumPtrfloatIOV
	916 -> load' f "glConvolutionParameteriEXT" ffienumenumintIOV
	917 -> load' f "glConvolutionParameterivEXT" ffienumenumPtrintIOV
	918 -> load' f "glCopyConvolutionFilter1DEXT" ffienumenumintintsizeiIOV
	919 -> load' f "glCopyConvolutionFilter2DEXT" ffienumenumintintsizeisizeiIOV
	920 -> load' f "glGetConvolutionFilterEXT" ffienumenumenumPtrVIOV
	921 -> load' f "glGetConvolutionParameterfvEXT" ffienumenumPtrfloatIOV
	922 -> load' f "glGetConvolutionParameterivEXT" ffienumenumPtrintIOV
	923 -> load' f "glGetSeparableFilterEXT" ffienumenumenumPtrVPtrVPtrVIOV
	924 -> load' f "glSeparableFilter2DEXT" ffienumenumsizeisizeienumenumPtrVPtrVIOV
	925 -> load' f "glBinormal3bEXT" ffibytebytebyteIOV
	926 -> load' f "glBinormal3bvEXT" ffiPtrbyteIOV
	927 -> load' f "glBinormal3dEXT" ffidoubledoubledoubleIOV
	928 -> load' f "glBinormal3dvEXT" ffiPtrdoubleIOV
	929 -> load' f "glBinormal3fEXT" ffifloatfloatfloatIOV
	930 -> load' f "glBinormal3fvEXT" ffiPtrfloatIOV
	931 -> load' f "glBinormal3iEXT" ffiintintintIOV
	932 -> load' f "glBinormal3ivEXT" ffiPtrintIOV
	933 -> load' f "glBinormal3sEXT" ffishortshortshortIOV
	934 -> load' f "glBinormal3svEXT" ffiPtrshortIOV
	935 -> load' f "glBinormalPointerEXT" ffienumsizeiPtrVIOV
	936 -> load' f "glTangent3bEXT" ffibytebytebyteIOV
	937 -> load' f "glTangent3bvEXT" ffiPtrbyteIOV
	938 -> load' f "glTangent3dEXT" ffidoubledoubledoubleIOV
	939 -> load' f "glTangent3dvEXT" ffiPtrdoubleIOV
	940 -> load' f "glTangent3fEXT" ffifloatfloatfloatIOV
	941 -> load' f "glTangent3fvEXT" ffiPtrfloatIOV
	942 -> load' f "glTangent3iEXT" ffiintintintIOV
	943 -> load' f "glTangent3ivEXT" ffiPtrintIOV
	944 -> load' f "glTangent3sEXT" ffishortshortshortIOV
	945 -> load' f "glTangent3svEXT" ffiPtrshortIOV
	946 -> load' f "glTangentPointerEXT" ffienumsizeiPtrVIOV
	947 -> load' f "glCopyImageSubDataEXT" ffiuintenumintintintintuintenumintintintintsizeisizeisizeiIOV
	948 -> load' f "glCopyTexImage1DEXT" ffienumintenumintintsizeiintIOV
	949 -> load' f "glCopyTexImage2DEXT" ffienumintenumintintsizeisizeiintIOV
	950 -> load' f "glCopyTexSubImage1DEXT" ffienumintintintintsizeiIOV
	951 -> load' f "glCopyTexSubImage2DEXT" ffienumintintintintintsizeisizeiIOV
	952 -> load' f "glCopyTexSubImage3DEXT" ffienumintintintintintintsizeisizeiIOV
	953 -> load' f "glCullParameterdvEXT" ffienumPtrdoubleIOV
	954 -> load' f "glCullParameterfvEXT" ffienumPtrfloatIOV
	955 -> load' f "glGetObjectLabelEXT" ffienumuintsizeiPtrsizeiPtrcharIOV
	956 -> load' f "glLabelObjectEXT" ffienumuintsizeiPtrcharIOV
	957 -> load' f "glInsertEventMarkerEXT" ffisizeiPtrcharIOV
	958 -> load' f "glPopGroupMarkerEXT" ffiIOV
	959 -> load' f "glPushGroupMarkerEXT" ffisizeiPtrcharIOV
	960 -> load' f "glDepthBoundsEXT" fficlampdclampdIOV
	961 -> load' f "glBindMultiTextureEXT" ffienumenumuintIOV
	962 -> load' f "glCheckNamedFramebufferStatusEXT" ffiuintenumIOenum
	963 -> load' f "glClearNamedBufferDataEXT" ffiuintenumenumenumPtrVIOV
	964 -> load' f "glClearNamedBufferSubDataEXT" ffiuintenumsizeiptrsizeiptrenumenumPtrVIOV
	965 -> load' f "glClientAttribDefaultEXT" ffibitfieldIOV
	966 -> load' f "glCompressedMultiTexImage1DEXT" ffienumenumintenumsizeiintsizeiPtrVIOV
	967 -> load' f "glCompressedMultiTexImage2DEXT" ffienumenumintenumsizeisizeiintsizeiPtrVIOV
	968 -> load' f "glCompressedMultiTexImage3DEXT" ffienumenumintenumsizeisizeisizeiintsizeiPtrVIOV
	969 -> load' f "glCompressedMultiTexSubImage1DEXT" ffienumenumintintsizeienumsizeiPtrVIOV
	970 -> load' f "glCompressedMultiTexSubImage2DEXT" ffienumenumintintintsizeisizeienumsizeiPtrVIOV
	971 -> load' f "glCompressedMultiTexSubImage3DEXT" ffienumenumintintintintsizeisizeisizeienumsizeiPtrVIOV
	972 -> load' f "glCompressedTextureImage1DEXT" ffiuintenumintenumsizeiintsizeiPtrVIOV
	973 -> load' f "glCompressedTextureImage2DEXT" ffiuintenumintenumsizeisizeiintsizeiPtrVIOV
	974 -> load' f "glCompressedTextureImage3DEXT" ffiuintenumintenumsizeisizeisizeiintsizeiPtrVIOV
	975 -> load' f "glCompressedTextureSubImage1DEXT" ffiuintenumintintsizeienumsizeiPtrVIOV
	976 -> load' f "glCompressedTextureSubImage2DEXT" ffiuintenumintintintsizeisizeienumsizeiPtrVIOV
	977 -> load' f "glCompressedTextureSubImage3DEXT" ffiuintenumintintintintsizeisizeisizeienumsizeiPtrVIOV
	978 -> load' f "glCopyMultiTexImage1DEXT" ffienumenumintenumintintsizeiintIOV
	979 -> load' f "glCopyMultiTexImage2DEXT" ffienumenumintenumintintsizeisizeiintIOV
	980 -> load' f "glCopyMultiTexSubImage1DEXT" ffienumenumintintintintsizeiIOV
	981 -> load' f "glCopyMultiTexSubImage2DEXT" ffienumenumintintintintintsizeisizeiIOV
	982 -> load' f "glCopyMultiTexSubImage3DEXT" ffienumenumintintintintintintsizeisizeiIOV
	983 -> load' f "glCopyTextureImage1DEXT" ffiuintenumintenumintintsizeiintIOV
	984 -> load' f "glCopyTextureImage2DEXT" ffiuintenumintenumintintsizeisizeiintIOV
	985 -> load' f "glCopyTextureSubImage1DEXT" ffiuintenumintintintintsizeiIOV
	986 -> load' f "glCopyTextureSubImage2DEXT" ffiuintenumintintintintintsizeisizeiIOV
	987 -> load' f "glCopyTextureSubImage3DEXT" ffiuintenumintintintintintintsizeisizeiIOV
	988 -> load' f "glDisableClientStateIndexedEXT" ffienumuintIOV
	989 -> load' f "glDisableClientStateiEXT" ffienumuintIOV
	990 -> load' f "glDisableIndexedEXT" ffienumuintIOV
	991 -> load' f "glDisableVertexArrayAttribEXT" ffiuintuintIOV
	992 -> load' f "glDisableVertexArrayEXT" ffiuintenumIOV
	993 -> load' f "glEnableClientStateIndexedEXT" ffienumuintIOV
	994 -> load' f "glEnableClientStateiEXT" ffienumuintIOV
	995 -> load' f "glEnableIndexedEXT" ffienumuintIOV
	996 -> load' f "glEnableVertexArrayAttribEXT" ffiuintuintIOV
	997 -> load' f "glEnableVertexArrayEXT" ffiuintenumIOV
	998 -> load' f "glFlushMappedNamedBufferRangeEXT" ffiuintintptrsizeiptrIOV
	999 -> load' f "glFramebufferDrawBufferEXT" ffiuintenumIOV
	1000 -> load' f "glFramebufferDrawBuffersEXT" ffiuintsizeiPtrenumIOV
	1001 -> load' f "glFramebufferReadBufferEXT" ffiuintenumIOV
	1002 -> load' f "glGenerateMultiTexMipmapEXT" ffienumenumIOV
	1003 -> load' f "glGenerateTextureMipmapEXT" ffiuintenumIOV
	1004 -> load' f "glGetBooleanIndexedvEXT" ffienumuintPtrbooleanIOV
	1005 -> load' f "glGetCompressedMultiTexImageEXT" ffienumenumintPtrVIOV
	1006 -> load' f "glGetCompressedTextureImageEXT" ffiuintenumintPtrVIOV
	1007 -> load' f "glGetDoubleIndexedvEXT" ffienumuintPtrdoubleIOV
	1008 -> load' f "glGetDoublei_vEXT" ffienumuintPtrdoubleIOV
	1009 -> load' f "glGetFloatIndexedvEXT" ffienumuintPtrfloatIOV
	1010 -> load' f "glGetFloati_vEXT" ffienumuintPtrfloatIOV
	1011 -> load' f "glGetFramebufferParameterivEXT" ffiuintenumPtrintIOV
	1012 -> load' f "glGetIntegerIndexedvEXT" ffienumuintPtrintIOV
	1013 -> load' f "glGetMultiTexEnvfvEXT" ffienumenumenumPtrfloatIOV
	1014 -> load' f "glGetMultiTexEnvivEXT" ffienumenumenumPtrintIOV
	1015 -> load' f "glGetMultiTexGendvEXT" ffienumenumenumPtrdoubleIOV
	1016 -> load' f "glGetMultiTexGenfvEXT" ffienumenumenumPtrfloatIOV
	1017 -> load' f "glGetMultiTexGenivEXT" ffienumenumenumPtrintIOV
	1018 -> load' f "glGetMultiTexImageEXT" ffienumenumintenumenumPtrVIOV
	1019 -> load' f "glGetMultiTexLevelParameterfvEXT" ffienumenumintenumPtrfloatIOV
	1020 -> load' f "glGetMultiTexLevelParameterivEXT" ffienumenumintenumPtrintIOV
	1021 -> load' f "glGetMultiTexParameterIivEXT" ffienumenumenumPtrintIOV
	1022 -> load' f "glGetMultiTexParameterIuivEXT" ffienumenumenumPtruintIOV
	1023 -> load' f "glGetMultiTexParameterfvEXT" ffienumenumenumPtrfloatIOV
	1024 -> load' f "glGetMultiTexParameterivEXT" ffienumenumenumPtrintIOV
	1025 -> load' f "glGetNamedBufferParameterivEXT" ffiuintenumPtrintIOV
	1026 -> load' f "glGetNamedBufferPointervEXT" ffiuintenumPtrVIOV
	1027 -> load' f "glGetNamedBufferSubDataEXT" ffiuintintptrsizeiptrPtrVIOV
	1028 -> load' f "glGetNamedFramebufferAttachmentParameterivEXT" ffiuintenumenumPtrintIOV
	1029 -> load' f "glGetNamedFramebufferParameterivEXT" ffiuintenumPtrintIOV
	1030 -> load' f "glGetNamedProgramLocalParameterIivEXT" ffiuintenumuintPtrintIOV
	1031 -> load' f "glGetNamedProgramLocalParameterIuivEXT" ffiuintenumuintPtruintIOV
	1032 -> load' f "glGetNamedProgramLocalParameterdvEXT" ffiuintenumuintPtrdoubleIOV
	1033 -> load' f "glGetNamedProgramLocalParameterfvEXT" ffiuintenumuintPtrfloatIOV
	1034 -> load' f "glGetNamedProgramStringEXT" ffiuintenumenumPtrVIOV
	1035 -> load' f "glGetNamedProgramivEXT" ffiuintenumenumPtrintIOV
	1036 -> load' f "glGetNamedRenderbufferParameterivEXT" ffiuintenumPtrintIOV
	1037 -> load' f "glGetPointerIndexedvEXT" ffienumuintPtrVIOV
	1038 -> load' f "glGetPointeri_vEXT" ffienumuintPtrVIOV
	1039 -> load' f "glGetTextureImageEXT" ffiuintenumintenumenumPtrVIOV
	1040 -> load' f "glGetTextureLevelParameterfvEXT" ffiuintenumintenumPtrfloatIOV
	1041 -> load' f "glGetTextureLevelParameterivEXT" ffiuintenumintenumPtrintIOV
	1042 -> load' f "glGetTextureParameterIivEXT" ffiuintenumenumPtrintIOV
	1043 -> load' f "glGetTextureParameterIuivEXT" ffiuintenumenumPtruintIOV
	1044 -> load' f "glGetTextureParameterfvEXT" ffiuintenumenumPtrfloatIOV
	1045 -> load' f "glGetTextureParameterivEXT" ffiuintenumenumPtrintIOV
	1046 -> load' f "glGetVertexArrayIntegeri_vEXT" ffiuintuintenumPtrintIOV
	1047 -> load' f "glGetVertexArrayIntegervEXT" ffiuintenumPtrintIOV
	1048 -> load' f "glGetVertexArrayPointeri_vEXT" ffiuintuintenumPtrVIOV
	1049 -> load' f "glGetVertexArrayPointervEXT" ffiuintenumPtrVIOV
	1050 -> load' f "glIsEnabledIndexedEXT" ffienumuintIOboolean
	1051 -> load' f "glMapNamedBufferEXT" ffiuintenumIOPtrV
	1052 -> load' f "glMapNamedBufferRangeEXT" ffiuintintptrsizeiptrbitfieldIOPtrV
	1053 -> load' f "glMatrixFrustumEXT" ffienumdoubledoubledoubledoubledoubledoubleIOV
	1054 -> load' f "glMatrixLoadIdentityEXT" ffienumIOV
	1055 -> load' f "glMatrixLoadTransposedEXT" ffienumPtrdoubleIOV
	1056 -> load' f "glMatrixLoadTransposefEXT" ffienumPtrfloatIOV
	1057 -> load' f "glMatrixLoaddEXT" ffienumPtrdoubleIOV
	1058 -> load' f "glMatrixLoadfEXT" ffienumPtrfloatIOV
	1059 -> load' f "glMatrixMultTransposedEXT" ffienumPtrdoubleIOV
	1060 -> load' f "glMatrixMultTransposefEXT" ffienumPtrfloatIOV
	1061 -> load' f "glMatrixMultdEXT" ffienumPtrdoubleIOV
	1062 -> load' f "glMatrixMultfEXT" ffienumPtrfloatIOV
	1063 -> load' f "glMatrixOrthoEXT" ffienumdoubledoubledoubledoubledoubledoubleIOV
	1064 -> load' f "glMatrixPopEXT" ffienumIOV
	1065 -> load' f "glMatrixPushEXT" ffienumIOV
	1066 -> load' f "glMatrixRotatedEXT" ffienumdoubledoubledoubledoubleIOV
	1067 -> load' f "glMatrixRotatefEXT" ffienumfloatfloatfloatfloatIOV
	1068 -> load' f "glMatrixScaledEXT" ffienumdoubledoubledoubleIOV
	1069 -> load' f "glMatrixScalefEXT" ffienumfloatfloatfloatIOV
	1070 -> load' f "glMatrixTranslatedEXT" ffienumdoubledoubledoubleIOV
	1071 -> load' f "glMatrixTranslatefEXT" ffienumfloatfloatfloatIOV
	1072 -> load' f "glMultiTexBufferEXT" ffienumenumenumuintIOV
	1073 -> load' f "glMultiTexCoordPointerEXT" ffienumintenumsizeiPtrVIOV
	1074 -> load' f "glMultiTexEnvfEXT" ffienumenumenumfloatIOV
	1075 -> load' f "glMultiTexEnvfvEXT" ffienumenumenumPtrfloatIOV
	1076 -> load' f "glMultiTexEnviEXT" ffienumenumenumintIOV
	1077 -> load' f "glMultiTexEnvivEXT" ffienumenumenumPtrintIOV
	1078 -> load' f "glMultiTexGendEXT" ffienumenumenumdoubleIOV
	1079 -> load' f "glMultiTexGendvEXT" ffienumenumenumPtrdoubleIOV
	1080 -> load' f "glMultiTexGenfEXT" ffienumenumenumfloatIOV
	1081 -> load' f "glMultiTexGenfvEXT" ffienumenumenumPtrfloatIOV
	1082 -> load' f "glMultiTexGeniEXT" ffienumenumenumintIOV
	1083 -> load' f "glMultiTexGenivEXT" ffienumenumenumPtrintIOV
	1084 -> load' f "glMultiTexImage1DEXT" ffienumenumintintsizeiintenumenumPtrVIOV
	1085 -> load' f "glMultiTexImage2DEXT" ffienumenumintintsizeisizeiintenumenumPtrVIOV
	1086 -> load' f "glMultiTexImage3DEXT" ffienumenumintintsizeisizeisizeiintenumenumPtrVIOV
	1087 -> load' f "glMultiTexParameterIivEXT" ffienumenumenumPtrintIOV
	1088 -> load' f "glMultiTexParameterIuivEXT" ffienumenumenumPtruintIOV
	1089 -> load' f "glMultiTexParameterfEXT" ffienumenumenumfloatIOV
	1090 -> load' f "glMultiTexParameterfvEXT" ffienumenumenumPtrfloatIOV
	1091 -> load' f "glMultiTexParameteriEXT" ffienumenumenumintIOV
	1092 -> load' f "glMultiTexParameterivEXT" ffienumenumenumPtrintIOV
	1093 -> load' f "glMultiTexRenderbufferEXT" ffienumenumuintIOV
	1094 -> load' f "glMultiTexSubImage1DEXT" ffienumenumintintsizeienumenumPtrVIOV
	1095 -> load' f "glMultiTexSubImage2DEXT" ffienumenumintintintsizeisizeienumenumPtrVIOV
	1096 -> load' f "glMultiTexSubImage3DEXT" ffienumenumintintintintsizeisizeisizeienumenumPtrVIOV
	1097 -> load' f "glNamedBufferDataEXT" ffiuintsizeiptrPtrVenumIOV
	1098 -> load' f "glNamedBufferStorageEXT" ffiuintsizeiptrPtrVbitfieldIOV
	1099 -> load' f "glNamedBufferSubDataEXT" ffiuintintptrsizeiptrPtrVIOV
	1100 -> load' f "glNamedCopyBufferSubDataEXT" ffiuintuintintptrintptrsizeiptrIOV
	1101 -> load' f "glNamedFramebufferParameteriEXT" ffiuintenumintIOV
	1102 -> load' f "glNamedFramebufferRenderbufferEXT" ffiuintenumenumuintIOV
	1103 -> load' f "glNamedFramebufferTexture1DEXT" ffiuintenumenumuintintIOV
	1104 -> load' f "glNamedFramebufferTexture2DEXT" ffiuintenumenumuintintIOV
	1105 -> load' f "glNamedFramebufferTexture3DEXT" ffiuintenumenumuintintintIOV
	1106 -> load' f "glNamedFramebufferTextureEXT" ffiuintenumuintintIOV
	1107 -> load' f "glNamedFramebufferTextureFaceEXT" ffiuintenumuintintenumIOV
	1108 -> load' f "glNamedFramebufferTextureLayerEXT" ffiuintenumuintintintIOV
	1109 -> load' f "glNamedProgramLocalParameter4dEXT" ffiuintenumuintdoubledoubledoubledoubleIOV
	1110 -> load' f "glNamedProgramLocalParameter4dvEXT" ffiuintenumuintPtrdoubleIOV
	1111 -> load' f "glNamedProgramLocalParameter4fEXT" ffiuintenumuintfloatfloatfloatfloatIOV
	1112 -> load' f "glNamedProgramLocalParameter4fvEXT" ffiuintenumuintPtrfloatIOV
	1113 -> load' f "glNamedProgramLocalParameterI4iEXT" ffiuintenumuintintintintintIOV
	1114 -> load' f "glNamedProgramLocalParameterI4ivEXT" ffiuintenumuintPtrintIOV
	1115 -> load' f "glNamedProgramLocalParameterI4uiEXT" ffiuintenumuintuintuintuintuintIOV
	1116 -> load' f "glNamedProgramLocalParameterI4uivEXT" ffiuintenumuintPtruintIOV
	1117 -> load' f "glNamedProgramLocalParameters4fvEXT" ffiuintenumuintsizeiPtrfloatIOV
	1118 -> load' f "glNamedProgramLocalParametersI4ivEXT" ffiuintenumuintsizeiPtrintIOV
	1119 -> load' f "glNamedProgramLocalParametersI4uivEXT" ffiuintenumuintsizeiPtruintIOV
	1120 -> load' f "glNamedProgramStringEXT" ffiuintenumenumsizeiPtrVIOV
	1121 -> load' f "glNamedRenderbufferStorageEXT" ffiuintenumsizeisizeiIOV
	1122 -> load' f "glNamedRenderbufferStorageMultisampleCoverageEXT" ffiuintsizeisizeienumsizeisizeiIOV
	1123 -> load' f "glNamedRenderbufferStorageMultisampleEXT" ffiuintsizeienumsizeisizeiIOV
	1124 -> load' f "glProgramUniform1dEXT" ffiuintintdoubleIOV
	1125 -> load' f "glProgramUniform1dvEXT" ffiuintintsizeiPtrdoubleIOV
	1126 -> load' f "glProgramUniform1fEXT" ffiuintintfloatIOV
	1127 -> load' f "glProgramUniform1fvEXT" ffiuintintsizeiPtrfloatIOV
	1128 -> load' f "glProgramUniform1iEXT" ffiuintintintIOV
	1129 -> load' f "glProgramUniform1ivEXT" ffiuintintsizeiPtrintIOV
	1130 -> load' f "glProgramUniform1uiEXT" ffiuintintuintIOV
	1131 -> load' f "glProgramUniform1uivEXT" ffiuintintsizeiPtruintIOV
	1132 -> load' f "glProgramUniform2dEXT" ffiuintintdoubledoubleIOV
	1133 -> load' f "glProgramUniform2dvEXT" ffiuintintsizeiPtrdoubleIOV
	1134 -> load' f "glProgramUniform2fEXT" ffiuintintfloatfloatIOV
	1135 -> load' f "glProgramUniform2fvEXT" ffiuintintsizeiPtrfloatIOV
	1136 -> load' f "glProgramUniform2iEXT" ffiuintintintintIOV
	1137 -> load' f "glProgramUniform2ivEXT" ffiuintintsizeiPtrintIOV
	1138 -> load' f "glProgramUniform2uiEXT" ffiuintintuintuintIOV
	1139 -> load' f "glProgramUniform2uivEXT" ffiuintintsizeiPtruintIOV
	1140 -> load' f "glProgramUniform3dEXT" ffiuintintdoubledoubledoubleIOV
	1141 -> load' f "glProgramUniform3dvEXT" ffiuintintsizeiPtrdoubleIOV
	1142 -> load' f "glProgramUniform3fEXT" ffiuintintfloatfloatfloatIOV
	1143 -> load' f "glProgramUniform3fvEXT" ffiuintintsizeiPtrfloatIOV
	1144 -> load' f "glProgramUniform3iEXT" ffiuintintintintintIOV
	1145 -> load' f "glProgramUniform3ivEXT" ffiuintintsizeiPtrintIOV
	1146 -> load' f "glProgramUniform3uiEXT" ffiuintintuintuintuintIOV
	1147 -> load' f "glProgramUniform3uivEXT" ffiuintintsizeiPtruintIOV
	1148 -> load' f "glProgramUniform4dEXT" ffiuintintdoubledoubledoubledoubleIOV
	1149 -> load' f "glProgramUniform4dvEXT" ffiuintintsizeiPtrdoubleIOV
	1150 -> load' f "glProgramUniform4fEXT" ffiuintintfloatfloatfloatfloatIOV
	1151 -> load' f "glProgramUniform4fvEXT" ffiuintintsizeiPtrfloatIOV
	1152 -> load' f "glProgramUniform4iEXT" ffiuintintintintintintIOV
	1153 -> load' f "glProgramUniform4ivEXT" ffiuintintsizeiPtrintIOV
	1154 -> load' f "glProgramUniform4uiEXT" ffiuintintuintuintuintuintIOV
	1155 -> load' f "glProgramUniform4uivEXT" ffiuintintsizeiPtruintIOV
	1156 -> load' f "glProgramUniformMatrix2dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1157 -> load' f "glProgramUniformMatrix2fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1158 -> load' f "glProgramUniformMatrix2x3dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1159 -> load' f "glProgramUniformMatrix2x3fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1160 -> load' f "glProgramUniformMatrix2x4dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1161 -> load' f "glProgramUniformMatrix2x4fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1162 -> load' f "glProgramUniformMatrix3dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1163 -> load' f "glProgramUniformMatrix3fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1164 -> load' f "glProgramUniformMatrix3x2dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1165 -> load' f "glProgramUniformMatrix3x2fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1166 -> load' f "glProgramUniformMatrix3x4dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1167 -> load' f "glProgramUniformMatrix3x4fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1168 -> load' f "glProgramUniformMatrix4dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1169 -> load' f "glProgramUniformMatrix4fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1170 -> load' f "glProgramUniformMatrix4x2dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1171 -> load' f "glProgramUniformMatrix4x2fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1172 -> load' f "glProgramUniformMatrix4x3dvEXT" ffiuintintsizeibooleanPtrdoubleIOV
	1173 -> load' f "glProgramUniformMatrix4x3fvEXT" ffiuintintsizeibooleanPtrfloatIOV
	1174 -> load' f "glPushClientAttribDefaultEXT" ffibitfieldIOV
	1175 -> load' f "glTextureBufferEXT" ffiuintenumenumuintIOV
	1176 -> load' f "glTextureBufferRangeEXT" ffiuintenumenumuintintptrsizeiptrIOV
	1177 -> load' f "glTextureImage1DEXT" ffiuintenumintintsizeiintenumenumPtrVIOV
	1178 -> load' f "glTextureImage2DEXT" ffiuintenumintintsizeisizeiintenumenumPtrVIOV
	1179 -> load' f "glTextureImage3DEXT" ffiuintenumintintsizeisizeisizeiintenumenumPtrVIOV
	1180 -> load' f "glTexturePageCommitmentEXT" ffiuintintintintintsizeisizeisizeibooleanIOV
	1181 -> load' f "glTextureParameterIivEXT" ffiuintenumenumPtrintIOV
	1182 -> load' f "glTextureParameterIuivEXT" ffiuintenumenumPtruintIOV
	1183 -> load' f "glTextureParameterfEXT" ffiuintenumenumfloatIOV
	1184 -> load' f "glTextureParameterfvEXT" ffiuintenumenumPtrfloatIOV
	1185 -> load' f "glTextureParameteriEXT" ffiuintenumenumintIOV
	1186 -> load' f "glTextureParameterivEXT" ffiuintenumenumPtrintIOV
	1187 -> load' f "glTextureRenderbufferEXT" ffiuintenumuintIOV
	1188 -> load' f "glTextureStorage1DEXT" ffiuintenumsizeienumsizeiIOV
	1189 -> load' f "glTextureStorage2DEXT" ffiuintenumsizeienumsizeisizeiIOV
	1190 -> load' f "glTextureStorage2DMultisampleEXT" ffiuintenumsizeienumsizeisizeibooleanIOV
	1191 -> load' f "glTextureStorage3DEXT" ffiuintenumsizeienumsizeisizeisizeiIOV
	1192 -> load' f "glTextureStorage3DMultisampleEXT" ffiuintenumsizeienumsizeisizeisizeibooleanIOV
	1193 -> load' f "glTextureSubImage1DEXT" ffiuintenumintintsizeienumenumPtrVIOV
	1194 -> load' f "glTextureSubImage2DEXT" ffiuintenumintintintsizeisizeienumenumPtrVIOV
	1195 -> load' f "glTextureSubImage3DEXT" ffiuintenumintintintintsizeisizeisizeienumenumPtrVIOV
	1196 -> load' f "glUnmapNamedBufferEXT" ffiuintIOboolean
	1197 -> load' f "glVertexArrayBindVertexBufferEXT" ffiuintuintuintintptrsizeiIOV
	1198 -> load' f "glVertexArrayColorOffsetEXT" ffiuintuintintenumsizeiintptrIOV
	1199 -> load' f "glVertexArrayEdgeFlagOffsetEXT" ffiuintuintsizeiintptrIOV
	1200 -> load' f "glVertexArrayFogCoordOffsetEXT" ffiuintuintenumsizeiintptrIOV
	1201 -> load' f "glVertexArrayIndexOffsetEXT" ffiuintuintenumsizeiintptrIOV
	1202 -> load' f "glVertexArrayMultiTexCoordOffsetEXT" ffiuintuintenumintenumsizeiintptrIOV
	1203 -> load' f "glVertexArrayNormalOffsetEXT" ffiuintuintenumsizeiintptrIOV
	1204 -> load' f "glVertexArraySecondaryColorOffsetEXT" ffiuintuintintenumsizeiintptrIOV
	1205 -> load' f "glVertexArrayTexCoordOffsetEXT" ffiuintuintintenumsizeiintptrIOV
	1206 -> load' f "glVertexArrayVertexAttribBindingEXT" ffiuintuintuintIOV
	1207 -> load' f "glVertexArrayVertexAttribDivisorEXT" ffiuintuintuintIOV
	1208 -> load' f "glVertexArrayVertexAttribFormatEXT" ffiuintuintintenumbooleanuintIOV
	1209 -> load' f "glVertexArrayVertexAttribIFormatEXT" ffiuintuintintenumuintIOV
	1210 -> load' f "glVertexArrayVertexAttribIOffsetEXT" ffiuintuintuintintenumsizeiintptrIOV
	1211 -> load' f "glVertexArrayVertexAttribLFormatEXT" ffiuintuintintenumuintIOV
	1212 -> load' f "glVertexArrayVertexAttribLOffsetEXT" ffiuintuintuintintenumsizeiintptrIOV
	1213 -> load' f "glVertexArrayVertexAttribOffsetEXT" ffiuintuintuintintenumbooleansizeiintptrIOV
	1214 -> load' f "glVertexArrayVertexBindingDivisorEXT" ffiuintuintuintIOV
	1215 -> load' f "glVertexArrayVertexOffsetEXT" ffiuintuintintenumsizeiintptrIOV
	1216 -> load' f "glDiscardFramebufferEXT" ffienumsizeiPtrenumIOV
	1217 -> load' f "glBeginQueryEXT" ffienumuintIOV
	1218 -> load' f "glDeleteQueriesEXT" ffisizeiPtruintIOV
	1219 -> load' f "glEndQueryEXT" ffienumIOV
	1220 -> load' f "glGenQueriesEXT" ffisizeiPtruintIOV
	1221 -> load' f "glGetQueryObjecti64vEXT" ffiuintenumPtrint64IOV
	1222 -> load' f "glGetQueryObjectivEXT" ffiuintenumPtrintIOV
	1223 -> load' f "glGetQueryObjectui64vEXT" ffiuintenumPtruint64IOV
	1224 -> load' f "glGetQueryObjectuivEXT" ffiuintenumPtruintIOV
	1225 -> load' f "glGetQueryivEXT" ffienumenumPtrintIOV
	1226 -> load' f "glIsQueryEXT" ffiuintIOboolean
	1227 -> load' f "glQueryCounterEXT" ffiuintenumIOV
	1228 -> load' f "glDrawBuffersEXT" ffisizeiPtrenumIOV
	1229 -> load' f "glColorMaskIndexedEXT" ffiuintbooleanbooleanbooleanbooleanIOV
	1230 -> load' f "glBlendEquationSeparateiEXT" ffiuintenumenumIOV
	1231 -> load' f "glBlendEquationiEXT" ffiuintenumIOV
	1232 -> load' f "glBlendFuncSeparateiEXT" ffiuintenumenumenumenumIOV
	1233 -> load' f "glBlendFunciEXT" ffiuintenumenumIOV
	1234 -> load' f "glColorMaskiEXT" ffiuintbooleanbooleanbooleanbooleanIOV
	1235 -> load' f "glDisableiEXT" ffienumuintIOV
	1236 -> load' f "glEnableiEXT" ffienumuintIOV
	1237 -> load' f "glIsEnablediEXT" ffienumuintIOboolean
	1238 -> load' f "glDrawArraysInstancedEXT" ffienumintsizeisizeiIOV
	1239 -> load' f "glDrawElementsInstancedEXT" ffienumsizeienumPtrVsizeiIOV
	1240 -> load' f "glDrawRangeElementsEXT" ffienumuintuintsizeienumPtrVIOV
	1241 -> load' f "glFogCoordPointerEXT" ffienumsizeiPtrVIOV
	1242 -> load' f "glFogCoorddEXT" ffidoubleIOV
	1243 -> load' f "glFogCoorddvEXT" ffiPtrdoubleIOV
	1244 -> load' f "glFogCoordfEXT" ffifloatIOV
	1245 -> load' f "glFogCoordfvEXT" ffiPtrfloatIOV
	1246 -> load' f "glBlitFramebufferEXT" ffiintintintintintintintintbitfieldenumIOV
	1247 -> load' f "glRenderbufferStorageMultisampleEXT" ffienumsizeienumsizeisizeiIOV
	1248 -> load' f "glBindFramebufferEXT" ffienumuintIOV
	1249 -> load' f "glBindRenderbufferEXT" ffienumuintIOV
	1250 -> load' f "glCheckFramebufferStatusEXT" ffienumIOenum
	1251 -> load' f "glDeleteFramebuffersEXT" ffisizeiPtruintIOV
	1252 -> load' f "glDeleteRenderbuffersEXT" ffisizeiPtruintIOV
	1253 -> load' f "glFramebufferRenderbufferEXT" ffienumenumenumuintIOV
	1254 -> load' f "glFramebufferTexture1DEXT" ffienumenumenumuintintIOV
	1255 -> load' f "glFramebufferTexture2DEXT" ffienumenumenumuintintIOV
	1256 -> load' f "glFramebufferTexture3DEXT" ffienumenumenumuintintintIOV
	1257 -> load' f "glGenFramebuffersEXT" ffisizeiPtruintIOV
	1258 -> load' f "glGenRenderbuffersEXT" ffisizeiPtruintIOV
	1259 -> load' f "glGenerateMipmapEXT" ffienumIOV
	1260 -> load' f "glGetFramebufferAttachmentParameterivEXT" ffienumenumenumPtrintIOV
	1261 -> load' f "glGetRenderbufferParameterivEXT" ffienumenumPtrintIOV
	1262 -> load' f "glIsFramebufferEXT" ffiuintIOboolean
	1263 -> load' f "glIsRenderbufferEXT" ffiuintIOboolean
	1264 -> load' f "glRenderbufferStorageEXT" ffienumenumsizeisizeiIOV
	1265 -> load' f "glFramebufferTextureEXT" ffienumenumuintintIOV
	1266 -> load' f "glProgramParameteriEXT" ffiuintenumintIOV
	1267 -> load' f "glProgramEnvParameters4fvEXT" ffienumuintsizeiPtrfloatIOV
	1268 -> load' f "glProgramLocalParameters4fvEXT" ffienumuintsizeiPtrfloatIOV
	1269 -> load' f "glBindFragDataLocationEXT" ffiuintuintPtrcharIOV
	1270 -> load' f "glGetFragDataLocationEXT" ffiuintPtrcharIOint
	1271 -> load' f "glGetUniformuivEXT" ffiuintintPtruintIOV
	1272 -> load' f "glUniform1uiEXT" ffiintuintIOV
	1273 -> load' f "glUniform1uivEXT" ffiintsizeiPtruintIOV
	1274 -> load' f "glUniform2uiEXT" ffiintuintuintIOV
	1275 -> load' f "glUniform2uivEXT" ffiintsizeiPtruintIOV
	1276 -> load' f "glUniform3uiEXT" ffiintuintuintuintIOV
	1277 -> load' f "glUniform3uivEXT" ffiintsizeiPtruintIOV
	1278 -> load' f "glUniform4uiEXT" ffiintuintuintuintuintIOV
	1279 -> load' f "glUniform4uivEXT" ffiintsizeiPtruintIOV
	1280 -> load' f "glGetHistogramEXT" ffienumbooleanenumenumPtrVIOV
	1281 -> load' f "glGetHistogramParameterfvEXT" ffienumenumPtrfloatIOV
	1282 -> load' f "glGetHistogramParameterivEXT" ffienumenumPtrintIOV
	1283 -> load' f "glGetMinmaxEXT" ffienumbooleanenumenumPtrVIOV
	1284 -> load' f "glGetMinmaxParameterfvEXT" ffienumenumPtrfloatIOV
	1285 -> load' f "glGetMinmaxParameterivEXT" ffienumenumPtrintIOV
	1286 -> load' f "glHistogramEXT" ffienumsizeienumbooleanIOV
	1287 -> load' f "glMinmaxEXT" ffienumenumbooleanIOV
	1288 -> load' f "glResetHistogramEXT" ffienumIOV
	1289 -> load' f "glResetMinmaxEXT" ffienumIOV
	1290 -> load' f "glIndexFuncEXT" ffienumclampfIOV
	1291 -> load' f "glIndexMaterialEXT" ffienumenumIOV
	1292 -> load' f "glVertexAttribDivisorEXT" ffiuintuintIOV
	1293 -> load' f "glApplyTextureEXT" ffienumIOV
	1294 -> load' f "glTextureLightEXT" ffienumIOV
	1295 -> load' f "glTextureMaterialEXT" ffienumenumIOV
	1296 -> load' f "glFlushMappedBufferRangeEXT" ffienumintptrsizeiptrIOV
	1297 -> load' f "glMapBufferRangeEXT" ffienumintptrsizeiptrbitfieldIOPtrV
	1298 -> load' f "glMultiDrawArraysEXT" ffienumPtrintPtrsizeisizeiIOV
	1299 -> load' f "glMultiDrawElementsEXT" ffienumPtrsizeienumPtrVsizeiIOV
	1300 -> load' f "glSampleMaskEXT" fficlampfbooleanIOV
	1301 -> load' f "glSamplePatternEXT" ffienumIOV
	1302 -> load' f "glFramebufferTexture2DMultisampleEXT" ffienumenumenumuintintsizeiIOV
	1303 -> load' f "glDrawBuffersIndexedEXT" ffiintPtrenumPtrintIOV
	1304 -> load' f "glGetIntegeri_vEXT" ffienumuintPtrintIOV
	1305 -> load' f "glReadBufferIndexedEXT" ffienumintIOV
	1306 -> load' f "glColorTableEXT" ffienumenumsizeienumenumPtrVIOV
	1307 -> load' f "glGetColorTableEXT" ffienumenumenumPtrVIOV
	1308 -> load' f "glGetColorTableParameterfvEXT" ffienumenumPtrfloatIOV
	1309 -> load' f "glGetColorTableParameterivEXT" ffienumenumPtrintIOV
	1310 -> load' f "glGetPixelTransformParameterfvEXT" ffienumenumPtrfloatIOV
	1311 -> load' f "glGetPixelTransformParameterivEXT" ffienumenumPtrintIOV
	1312 -> load' f "glPixelTransformParameterfEXT" ffienumenumfloatIOV
	1313 -> load' f "glPixelTransformParameterfvEXT" ffienumenumPtrfloatIOV
	1314 -> load' f "glPixelTransformParameteriEXT" ffienumenumintIOV
	1315 -> load' f "glPixelTransformParameterivEXT" ffienumenumPtrintIOV
	1316 -> load' f "glPointParameterfEXT" ffienumfloatIOV
	1317 -> load' f "glPointParameterfvEXT" ffienumPtrfloatIOV
	1318 -> load' f "glPolygonOffsetEXT" ffifloatfloatIOV
	1319 -> load' f "glPolygonOffsetClampEXT" ffifloatfloatfloatIOV
	1320 -> load' f "glPrimitiveBoundingBoxEXT" ffifloatfloatfloatfloatfloatfloatfloatfloatIOV
	1321 -> load' f "glProvokingVertexEXT" ffienumIOV
	1322 -> load' f "glRasterSamplesEXT" ffiuintbooleanIOV
	1323 -> load' f "glGetGraphicsResetStatusEXT" ffiIOenum
	1324 -> load' f "glGetnUniformfvEXT" ffiuintintsizeiPtrfloatIOV
	1325 -> load' f "glGetnUniformivEXT" ffiuintintsizeiPtrintIOV
	1326 -> load' f "glReadnPixelsEXT" ffiintintsizeisizeienumenumsizeiPtrVIOV
	1327 -> load' f "glSecondaryColor3bEXT" ffibytebytebyteIOV
	1328 -> load' f "glSecondaryColor3bvEXT" ffiPtrbyteIOV
	1329 -> load' f "glSecondaryColor3dEXT" ffidoubledoubledoubleIOV
	1330 -> load' f "glSecondaryColor3dvEXT" ffiPtrdoubleIOV
	1331 -> load' f "glSecondaryColor3fEXT" ffifloatfloatfloatIOV
	1332 -> load' f "glSecondaryColor3fvEXT" ffiPtrfloatIOV
	1333 -> load' f "glSecondaryColor3iEXT" ffiintintintIOV
	1334 -> load' f "glSecondaryColor3ivEXT" ffiPtrintIOV
	1335 -> load' f "glSecondaryColor3sEXT" ffishortshortshortIOV
	1336 -> load' f "glSecondaryColor3svEXT" ffiPtrshortIOV
	1337 -> load' f "glSecondaryColor3ubEXT" ffiubyteubyteubyteIOV
	1338 -> load' f "glSecondaryColor3ubvEXT" ffiPtrubyteIOV
	1339 -> load' f "glSecondaryColor3uiEXT" ffiuintuintuintIOV
	1340 -> load' f "glSecondaryColor3uivEXT" ffiPtruintIOV
	1341 -> load' f "glSecondaryColor3usEXT" ffiushortushortushortIOV
	1342 -> load' f "glSecondaryColor3usvEXT" ffiPtrushortIOV
	1343 -> load' f "glSecondaryColorPointerEXT" ffiintenumsizeiPtrVIOV
	1344 -> load' f "glActiveProgramEXT" ffiuintIOV
	1345 -> load' f "glActiveShaderProgramEXT" ffiuintuintIOV
	1346 -> load' f "glBindProgramPipelineEXT" ffiuintIOV
	1347 -> load' f "glCreateShaderProgramEXT" ffienumPtrcharIOuint
	1348 -> load' f "glCreateShaderProgramvEXT" ffienumsizeiPtrcharIOuint
	1349 -> load' f "glDeleteProgramPipelinesEXT" ffisizeiPtruintIOV
	1350 -> load' f "glGenProgramPipelinesEXT" ffisizeiPtruintIOV
	1351 -> load' f "glGetProgramPipelineInfoLogEXT" ffiuintsizeiPtrsizeiPtrcharIOV
	1352 -> load' f "glGetProgramPipelineivEXT" ffiuintenumPtrintIOV
	1353 -> load' f "glIsProgramPipelineEXT" ffiuintIOboolean
	1354 -> load' f "glUseProgramStagesEXT" ffiuintbitfielduintIOV
	1355 -> load' f "glUseShaderProgramEXT" ffienumuintIOV
	1356 -> load' f "glValidateProgramPipelineEXT" ffiuintIOV
	1357 -> load' f "glBindImageTextureEXT" ffiuintuintintbooleanintenumintIOV
	1358 -> load' f "glMemoryBarrierEXT" ffibitfieldIOV
	1359 -> load' f "glStencilClearTagEXT" ffisizeiuintIOV
	1360 -> load' f "glActiveStencilFaceEXT" ffienumIOV
	1361 -> load' f "glTexSubImage1DEXT" ffienumintintsizeienumenumPtrVIOV
	1362 -> load' f "glTexSubImage2DEXT" ffienumintintintsizeisizeienumenumPtrVIOV
	1363 -> load' f "glPatchParameteriEXT" ffienumintIOV
	1364 -> load' f "glTexImage3DEXT" ffienumintenumsizeisizeisizeiintenumenumPtrVIOV
	1365 -> load' f "glTexSubImage3DEXT" ffienumintintintintsizeisizeisizeienumenumPtrVIOV
	1366 -> load' f "glFramebufferTextureLayerEXT" ffienumenumuintintintIOV
	1367 -> load' f "glGetSamplerParameterIivEXT" ffiuintenumPtrintIOV
	1368 -> load' f "glGetSamplerParameterIuivEXT" ffiuintenumPtruintIOV
	1369 -> load' f "glGetTexParameterIivEXT" ffienumenumPtrintIOV
	1370 -> load' f "glGetTexParameterIuivEXT" ffienumenumPtruintIOV
	1371 -> load' f "glSamplerParameterIivEXT" ffiuintenumPtrintIOV
	1372 -> load' f "glSamplerParameterIuivEXT" ffiuintenumPtruintIOV
	1373 -> load' f "glTexParameterIivEXT" ffienumenumPtrintIOV
	1374 -> load' f "glTexParameterIuivEXT" ffienumenumPtruintIOV
	1375 -> load' f "glTexBufferEXT" ffienumenumuintIOV
	1376 -> load' f "glTexBufferRangeEXT" ffienumenumuintintptrsizeiptrIOV
	1377 -> load' f "glClearColorIiEXT" ffiintintintintIOV
	1378 -> load' f "glClearColorIuiEXT" ffiuintuintuintuintIOV
	1379 -> load' f "glAreTexturesResidentEXT" ffisizeiPtruintPtrbooleanIOboolean
	1380 -> load' f "glBindTextureEXT" ffienumuintIOV
	1381 -> load' f "glDeleteTexturesEXT" ffisizeiPtruintIOV
	1382 -> load' f "glGenTexturesEXT" ffisizeiPtruintIOV
	1383 -> load' f "glIsTextureEXT" ffiuintIOboolean
	1384 -> load' f "glPrioritizeTexturesEXT" ffisizeiPtruintPtrclampfIOV
	1385 -> load' f "glTextureNormalEXT" ffienumIOV
	1386 -> load' f "glTexStorage1DEXT" ffienumsizeienumsizeiIOV
	1387 -> load' f "glTexStorage2DEXT" ffienumsizeienumsizeisizeiIOV
	1388 -> load' f "glTexStorage3DEXT" ffienumsizeienumsizeisizeisizeiIOV
	1389 -> load' f "glTextureViewEXT" ffiuintenumuintenumuintuintuintuintIOV
	1390 -> load' f "glBeginTransformFeedbackEXT" ffienumIOV
	1391 -> load' f "glBindBufferBaseEXT" ffienumuintuintIOV
	1392 -> load' f "glBindBufferOffsetEXT" ffienumuintuintintptrIOV
	1393 -> load' f "glBindBufferRangeEXT" ffienumuintuintintptrsizeiptrIOV
	1394 -> load' f "glEndTransformFeedbackEXT" ffiIOV
	1395 -> load' f "glGetTransformFeedbackVaryingEXT" ffiuintuintsizeiPtrsizeiPtrsizeiPtrenumPtrcharIOV
	1396 -> load' f "glTransformFeedbackVaryingsEXT" ffiuintsizeiPtrcharenumIOV
	1397 -> load' f "glArrayElementEXT" ffiintIOV
	1398 -> load' f "glColorPointerEXT" ffiintenumsizeisizeiPtrVIOV
	1399 -> load' f "glDrawArraysEXT" ffienumintsizeiIOV
	1400 -> load' f "glEdgeFlagPointerEXT" ffisizeisizeiPtrbooleanIOV
	1401 -> load' f "glGetPointervEXT" ffienumPtrVIOV
	1402 -> load' f "glIndexPointerEXT" ffienumsizeisizeiPtrVIOV
	1403 -> load' f "glNormalPointerEXT" ffienumsizeisizeiPtrVIOV
	1404 -> load' f "glTexCoordPointerEXT" ffiintenumsizeisizeiPtrVIOV
	1405 -> load' f "glVertexPointerEXT" ffiintenumsizeisizeiPtrVIOV
	1406 -> load' f "glGetVertexAttribLdvEXT" ffiuintenumPtrdoubleIOV
	1407 -> load' f "glVertexAttribL1dEXT" ffiuintdoubleIOV
	1408 -> load' f "glVertexAttribL1dvEXT" ffiuintPtrdoubleIOV
	1409 -> load' f "glVertexAttribL2dEXT" ffiuintdoubledoubleIOV
	1410 -> load' f "glVertexAttribL2dvEXT" ffiuintPtrdoubleIOV
	1411 -> load' f "glVertexAttribL3dEXT" ffiuintdoubledoubledoubleIOV
	1412 -> load' f "glVertexAttribL3dvEXT" ffiuintPtrdoubleIOV
	1413 -> load' f "glVertexAttribL4dEXT" ffiuintdoubledoubledoubledoubleIOV
	1414 -> load' f "glVertexAttribL4dvEXT" ffiuintPtrdoubleIOV
	1415 -> load' f "glVertexAttribLPointerEXT" ffiuintintenumsizeiPtrVIOV
	1416 -> load' f "glBeginVertexShaderEXT" ffiIOV
	1417 -> load' f "glBindLightParameterEXT" ffienumenumIOuint
	1418 -> load' f "glBindMaterialParameterEXT" ffienumenumIOuint
	1419 -> load' f "glBindParameterEXT" ffienumIOuint
	1420 -> load' f "glBindTexGenParameterEXT" ffienumenumenumIOuint
	1421 -> load' f "glBindTextureUnitParameterEXT" ffienumenumIOuint
	1422 -> load' f "glBindVertexShaderEXT" ffiuintIOV
	1423 -> load' f "glDeleteVertexShaderEXT" ffiuintIOV
	1424 -> load' f "glDisableVariantClientStateEXT" ffiuintIOV
	1425 -> load' f "glEnableVariantClientStateEXT" ffiuintIOV
	1426 -> load' f "glEndVertexShaderEXT" ffiIOV
	1427 -> load' f "glExtractComponentEXT" ffiuintuintuintIOV
	1428 -> load' f "glGenSymbolsEXT" ffienumenumenumuintIOuint
	1429 -> load' f "glGenVertexShadersEXT" ffiuintIOuint
	1430 -> load' f "glGetInvariantBooleanvEXT" ffiuintenumPtrbooleanIOV
	1431 -> load' f "glGetInvariantFloatvEXT" ffiuintenumPtrfloatIOV
	1432 -> load' f "glGetInvariantIntegervEXT" ffiuintenumPtrintIOV
	1433 -> load' f "glGetLocalConstantBooleanvEXT" ffiuintenumPtrbooleanIOV
	1434 -> load' f "glGetLocalConstantFloatvEXT" ffiuintenumPtrfloatIOV
	1435 -> load' f "glGetLocalConstantIntegervEXT" ffiuintenumPtrintIOV
	1436 -> load' f "glGetVariantBooleanvEXT" ffiuintenumPtrbooleanIOV
	1437 -> load' f "glGetVariantFloatvEXT" ffiuintenumPtrfloatIOV
	1438 -> load' f "glGetVariantIntegervEXT" ffiuintenumPtrintIOV
	1439 -> load' f "glGetVariantPointervEXT" ffiuintenumPtrVIOV
	1440 -> load' f "glInsertComponentEXT" ffiuintuintuintIOV
	1441 -> load' f "glIsVariantEnabledEXT" ffiuintenumIOboolean
	1442 -> load' f "glSetInvariantEXT" ffiuintenumPtrVIOV
	1443 -> load' f "glSetLocalConstantEXT" ffiuintenumPtrVIOV
	1444 -> load' f "glShaderOp1EXT" ffienumuintuintIOV
	1445 -> load' f "glShaderOp2EXT" ffienumuintuintuintIOV
	1446 -> load' f "glShaderOp3EXT" ffienumuintuintuintuintIOV
	1447 -> load' f "glSwizzleEXT" ffiuintuintenumenumenumenumIOV
	1448 -> load' f "glVariantPointerEXT" ffiuintenumuintPtrVIOV
	1449 -> load' f "glVariantbvEXT" ffiuintPtrbyteIOV
	1450 -> load' f "glVariantdvEXT" ffiuintPtrdoubleIOV
	1451 -> load' f "glVariantfvEXT" ffiuintPtrfloatIOV
	1452 -> load' f "glVariantivEXT" ffiuintPtrintIOV
	1453 -> load' f "glVariantsvEXT" ffiuintPtrshortIOV
	1454 -> load' f "glVariantubvEXT" ffiuintPtrubyteIOV
	1455 -> load' f "glVariantuivEXT" ffiuintPtruintIOV
	1456 -> load' f "glVariantusvEXT" ffiuintPtrushortIOV
	1457 -> load' f "glWriteMaskEXT" ffiuintuintenumenumenumenumIOV
	1458 -> load' f "glVertexWeightPointerEXT" ffiintenumsizeiPtrVIOV
	1459 -> load' f "glVertexWeightfEXT" ffifloatIOV
	1460 -> load' f "glVertexWeightfvEXT" ffiPtrfloatIOV
	1461 -> load' f "glImportSyncEXT" ffienumintptrbitfieldIOsync
	1462 -> load' f "glFrameTerminatorGREMEDY" ffiIOV
	1463 -> load' f "glStringMarkerGREMEDY" ffisizeiPtrVIOV
	1464 -> load' f "glGetImageTransformParameterfvHP" ffienumenumPtrfloatIOV
	1465 -> load' f "glGetImageTransformParameterivHP" ffienumenumPtrintIOV
	1466 -> load' f "glImageTransformParameterfHP" ffienumenumfloatIOV
	1467 -> load' f "glImageTransformParameterfvHP" ffienumenumPtrfloatIOV
	1468 -> load' f "glImageTransformParameteriHP" ffienumenumintIOV
	1469 -> load' f "glImageTransformParameterivHP" ffienumenumPtrintIOV
	1470 -> load' f "glMultiModeDrawArraysIBM" ffiPtrenumPtrintPtrsizeisizeiintIOV
	1471 -> load' f "glMultiModeDrawElementsIBM" ffiPtrenumPtrsizeienumPtrVsizeiintIOV
	1472 -> load' f "glFlushStaticDataIBM" ffienumIOV
	1473 -> load' f "glColorPointerListIBM" ffiintenumintPtrVintIOV
	1474 -> load' f "glEdgeFlagPointerListIBM" ffiintPtrbooleanintIOV
	1475 -> load' f "glFogCoordPointerListIBM" ffienumintPtrVintIOV
	1476 -> load' f "glIndexPointerListIBM" ffienumintPtrVintIOV
	1477 -> load' f "glNormalPointerListIBM" ffienumintPtrVintIOV
	1478 -> load' f "glSecondaryColorPointerListIBM" ffiintenumintPtrVintIOV
	1479 -> load' f "glTexCoordPointerListIBM" ffiintenumintPtrVintIOV
	1480 -> load' f "glVertexPointerListIBM" ffiintenumintPtrVintIOV
	1481 -> load' f "glFramebufferTexture2DMultisampleIMG" ffienumenumenumuintintsizeiIOV
	1482 -> load' f "glRenderbufferStorageMultisampleIMG" ffienumsizeienumsizeisizeiIOV
	1483 -> load' f "glClipPlanefIMG" ffienumPtrfloatIOV
	1484 -> load' f "glClipPlanexIMG" ffienumPtrfixedIOV
	1485 -> load' f "glBlendFuncSeparateINGR" ffienumenumenumenumIOV
	1486 -> load' f "glMapTexture2DINTEL" ffiuintintbitfieldPtrintPtrenumIOPtrV
	1487 -> load' f "glSyncTextureINTEL" ffiuintIOV
	1488 -> load' f "glUnmapTexture2DINTEL" ffiuintintIOV
	1489 -> load' f "glColorPointervINTEL" ffiintenumPtrVIOV
	1490 -> load' f "glNormalPointervINTEL" ffienumPtrVIOV
	1491 -> load' f "glTexCoordPointervINTEL" ffiintenumPtrVIOV
	1492 -> load' f "glVertexPointervINTEL" ffiintenumPtrVIOV
	1493 -> load' f "glBeginPerfQueryINTEL" ffiuintIOV
	1494 -> load' f "glCreatePerfQueryINTEL" ffiuintPtruintIOV
	1495 -> load' f "glDeletePerfQueryINTEL" ffiuintIOV
	1496 -> load' f "glEndPerfQueryINTEL" ffiuintIOV
	1497 -> load' f "glGetFirstPerfQueryIdINTEL" ffiPtruintIOV
	1498 -> load' f "glGetNextPerfQueryIdINTEL" ffiuintPtruintIOV
	1499 -> load' f "glGetPerfCounterInfoINTEL" ffiuintuintuintPtrcharuintPtrcharPtruintPtruintPtruintPtruintPtruint64IOV
	1500 -> load' f "glGetPerfQueryDataINTEL" ffiuintuintsizeiPtrVPtruintIOV
	1501 -> load' f "glGetPerfQueryIdByNameINTEL" ffiPtrcharPtruintIOV
	1502 -> load' f "glGetPerfQueryInfoINTEL" ffiuintuintPtrcharPtruintPtruintPtruintPtruintIOV
	1503 -> load' f "glBlendBarrierKHR" ffiIOV
	1504 -> load' f "glDebugMessageCallback" ffiDEBUGPROCPtrVIOV
	1505 -> load' f "glDebugMessageCallbackKHR" ffiDEBUGPROCKHRPtrVIOV
	1506 -> load' f "glDebugMessageControl" ffienumenumenumsizeiPtruintbooleanIOV
	1507 -> load' f "glDebugMessageControlKHR" ffienumenumenumsizeiPtruintbooleanIOV
	1508 -> load' f "glDebugMessageInsert" ffienumenumuintenumsizeiPtrcharIOV
	1509 -> load' f "glDebugMessageInsertKHR" ffienumenumuintenumsizeiPtrcharIOV
	1510 -> load' f "glGetDebugMessageLog" ffiuintsizeiPtrenumPtrenumPtruintPtrenumPtrsizeiPtrcharIOuint
	1511 -> load' f "glGetDebugMessageLogKHR" ffiuintsizeiPtrenumPtrenumPtruintPtrenumPtrsizeiPtrcharIOuint
	1512 -> load' f "glGetObjectLabel" ffienumuintsizeiPtrsizeiPtrcharIOV
	1513 -> load' f "glGetObjectLabelKHR" ffienumuintsizeiPtrsizeiPtrcharIOV
	1514 -> load' f "glGetObjectPtrLabel" ffiPtrVsizeiPtrsizeiPtrcharIOV
	1515 -> load' f "glGetObjectPtrLabelKHR" ffiPtrVsizeiPtrsizeiPtrcharIOV
	1516 -> load' f "glGetPointerv" ffienumPtrVIOV
	1517 -> load' f "glGetPointervKHR" ffienumPtrVIOV
	1518 -> load' f "glObjectLabel" ffienumuintsizeiPtrcharIOV
	1519 -> load' f "glObjectLabelKHR" ffienumuintsizeiPtrcharIOV
	1520 -> load' f "glObjectPtrLabel" ffiPtrVsizeiPtrcharIOV
	1521 -> load' f "glObjectPtrLabelKHR" ffiPtrVsizeiPtrcharIOV
	1522 -> load' f "glPopDebugGroup" ffiIOV
	1523 -> load' f "glPopDebugGroupKHR" ffiIOV
	1524 -> load' f "glPushDebugGroup" ffienumuintsizeiPtrcharIOV
	1525 -> load' f "glPushDebugGroupKHR" ffienumuintsizeiPtrcharIOV
	1526 -> load' f "glGetGraphicsResetStatus" ffiIOenum
	1527 -> load' f "glGetGraphicsResetStatusKHR" ffiIOenum
	1528 -> load' f "glGetnUniformfv" ffiuintintsizeiPtrfloatIOV
	1529 -> load' f "glGetnUniformfvKHR" ffiuintintsizeiPtrfloatIOV
	1530 -> load' f "glGetnUniformiv" ffiuintintsizeiPtrintIOV
	1531 -> load' f "glGetnUniformivKHR" ffiuintintsizeiPtrintIOV
	1532 -> load' f "glGetnUniformuiv" ffiuintintsizeiPtruintIOV
	1533 -> load' f "glGetnUniformuivKHR" ffiuintintsizeiPtruintIOV
	1534 -> load' f "glReadnPixels" ffiintintsizeisizeienumenumsizeiPtrVIOV
	1535 -> load' f "glReadnPixelsKHR" ffiintintsizeisizeienumenumsizeiPtrVIOV
	1536 -> load' f "glResizeBuffersMESA" ffiIOV
	1537 -> load' f "glWindowPos2dMESA" ffidoubledoubleIOV
	1538 -> load' f "glWindowPos2dvMESA" ffiPtrdoubleIOV
	1539 -> load' f "glWindowPos2fMESA" ffifloatfloatIOV
	1540 -> load' f "glWindowPos2fvMESA" ffiPtrfloatIOV
	1541 -> load' f "glWindowPos2iMESA" ffiintintIOV
	1542 -> load' f "glWindowPos2ivMESA" ffiPtrintIOV
	1543 -> load' f "glWindowPos2sMESA" ffishortshortIOV
	1544 -> load' f "glWindowPos2svMESA" ffiPtrshortIOV
	1545 -> load' f "glWindowPos3dMESA" ffidoubledoubledoubleIOV
	1546 -> load' f "glWindowPos3dvMESA" ffiPtrdoubleIOV
	1547 -> load' f "glWindowPos3fMESA" ffifloatfloatfloatIOV
	1548 -> load' f "glWindowPos3fvMESA" ffiPtrfloatIOV
	1549 -> load' f "glWindowPos3iMESA" ffiintintintIOV
	1550 -> load' f "glWindowPos3ivMESA" ffiPtrintIOV
	1551 -> load' f "glWindowPos3sMESA" ffishortshortshortIOV
	1552 -> load' f "glWindowPos3svMESA" ffiPtrshortIOV
	1553 -> load' f "glWindowPos4dMESA" ffidoubledoubledoubledoubleIOV
	1554 -> load' f "glWindowPos4dvMESA" ffiPtrdoubleIOV
	1555 -> load' f "glWindowPos4fMESA" ffifloatfloatfloatfloatIOV
	1556 -> load' f "glWindowPos4fvMESA" ffiPtrfloatIOV
	1557 -> load' f "glWindowPos4iMESA" ffiintintintintIOV
	1558 -> load' f "glWindowPos4ivMESA" ffiPtrintIOV
	1559 -> load' f "glWindowPos4sMESA" ffishortshortshortshortIOV
	1560 -> load' f "glWindowPos4svMESA" ffiPtrshortIOV
	1561 -> load' f "glMultiDrawArraysIndirectBindlessNV" ffienumPtrVsizeisizeiintIOV
	1562 -> load' f "glMultiDrawElementsIndirectBindlessNV" ffienumenumPtrVsizeisizeiintIOV
	1563 -> load' f "glMultiDrawArraysIndirectBindlessCountNV" ffienumPtrVsizeisizeisizeiintIOV
	1564 -> load' f "glMultiDrawElementsIndirectBindlessCountNV" ffienumenumPtrVsizeisizeisizeiintIOV
	1565 -> load' f "glGetImageHandleNV" ffiuintintbooleanintenumIOuint64
	1566 -> load' f "glGetTextureHandleNV" ffiuintIOuint64
	1567 -> load' f "glGetTextureSamplerHandleNV" ffiuintuintIOuint64
	1568 -> load' f "glIsImageHandleResidentNV" ffiuint64IOboolean
	1569 -> load' f "glIsTextureHandleResidentNV" ffiuint64IOboolean
	1570 -> load' f "glMakeImageHandleNonResidentNV" ffiuint64IOV
	1571 -> load' f "glMakeImageHandleResidentNV" ffiuint64enumIOV
	1572 -> load' f "glMakeTextureHandleNonResidentNV" ffiuint64IOV
	1573 -> load' f "glMakeTextureHandleResidentNV" ffiuint64IOV
	1574 -> load' f "glProgramUniformHandleui64NV" ffiuintintuint64IOV
	1575 -> load' f "glProgramUniformHandleui64vNV" ffiuintintsizeiPtruint64IOV
	1576 -> load' f "glUniformHandleui64NV" ffiintuint64IOV
	1577 -> load' f "glUniformHandleui64vNV" ffiintsizeiPtruint64IOV
	1578 -> load' f "glBlendBarrierNV" ffiIOV
	1579 -> load' f "glBlendParameteriNV" ffienumintIOV
	1580 -> load' f "glBeginConditionalRenderNV" ffiuintenumIOV
	1581 -> load' f "glEndConditionalRenderNV" ffiIOV
	1582 -> load' f "glSubpixelPrecisionBiasNV" ffiuintuintIOV
	1583 -> load' f "glCopyBufferSubDataNV" ffienumenumintptrintptrsizeiptrIOV
	1584 -> load' f "glCopyImageSubDataNV" ffiuintenumintintintintuintenumintintintintsizeisizeisizeiIOV
	1585 -> load' f "glCoverageMaskNV" ffibooleanIOV
	1586 -> load' f "glCoverageOperationNV" ffienumIOV
	1587 -> load' f "glClearDepthdNV" ffidoubleIOV
	1588 -> load' f "glDepthBoundsdNV" ffidoubledoubleIOV
	1589 -> load' f "glDepthRangedNV" ffidoubledoubleIOV
	1590 -> load' f "glDrawBuffersNV" ffisizeiPtrenumIOV
	1591 -> load' f "glDrawArraysInstancedNV" ffienumintsizeisizeiIOV
	1592 -> load' f "glDrawElementsInstancedNV" ffienumsizeienumPtrVsizeiIOV
	1593 -> load' f "glDrawTextureNV" ffiuintuintfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV
	1594 -> load' f "glEvalMapsNV" ffienumenumIOV
	1595 -> load' f "glGetMapAttribParameterfvNV" ffienumuintenumPtrfloatIOV
	1596 -> load' f "glGetMapAttribParameterivNV" ffienumuintenumPtrintIOV
	1597 -> load' f "glGetMapControlPointsNV" ffienumuintenumsizeisizeibooleanPtrVIOV
	1598 -> load' f "glGetMapParameterfvNV" ffienumenumPtrfloatIOV
	1599 -> load' f "glGetMapParameterivNV" ffienumenumPtrintIOV
	1600 -> load' f "glMapControlPointsNV" ffienumuintenumsizeisizeiintintbooleanPtrVIOV
	1601 -> load' f "glMapParameterfvNV" ffienumenumPtrfloatIOV
	1602 -> load' f "glMapParameterivNV" ffienumenumPtrintIOV
	1603 -> load' f "glGetMultisamplefvNV" ffienumuintPtrfloatIOV
	1604 -> load' f "glSampleMaskIndexedNV" ffiuintbitfieldIOV
	1605 -> load' f "glTexRenderbufferNV" ffienumuintIOV
	1606 -> load' f "glDeleteFencesNV" ffisizeiPtruintIOV
	1607 -> load' f "glFinishFenceNV" ffiuintIOV
	1608 -> load' f "glGenFencesNV" ffisizeiPtruintIOV
	1609 -> load' f "glGetFenceivNV" ffiuintenumPtrintIOV
	1610 -> load' f "glIsFenceNV" ffiuintIOboolean
	1611 -> load' f "glSetFenceNV" ffiuintenumIOV
	1612 -> load' f "glTestFenceNV" ffiuintIOboolean
	1613 -> load' f "glFragmentCoverageColorNV" ffiuintIOV
	1614 -> load' f "glGetProgramNamedParameterdvNV" ffiuintsizeiPtrubytePtrdoubleIOV
	1615 -> load' f "glGetProgramNamedParameterfvNV" ffiuintsizeiPtrubytePtrfloatIOV
	1616 -> load' f "glProgramNamedParameter4dNV" ffiuintsizeiPtrubytedoubledoubledoubledoubleIOV
	1617 -> load' f "glProgramNamedParameter4dvNV" ffiuintsizeiPtrubytePtrdoubleIOV
	1618 -> load' f "glProgramNamedParameter4fNV" ffiuintsizeiPtrubytefloatfloatfloatfloatIOV
	1619 -> load' f "glProgramNamedParameter4fvNV" ffiuintsizeiPtrubytePtrfloatIOV
	1620 -> load' f "glBlitFramebufferNV" ffiintintintintintintintintbitfieldenumIOV
	1621 -> load' f "glCoverageModulationNV" ffienumIOV
	1622 -> load' f "glCoverageModulationTableNV" ffisizeiPtrfloatIOV
	1623 -> load' f "glGetCoverageModulationTableNV" ffisizeiPtrfloatIOV
	1624 -> load' f "glRenderbufferStorageMultisampleNV" ffienumsizeienumsizeisizeiIOV
	1625 -> load' f "glRenderbufferStorageMultisampleCoverageNV" ffienumsizeisizeienumsizeisizeiIOV
	1626 -> load' f "glFramebufferTextureFaceEXT" ffienumenumuintintenumIOV
	1627 -> load' f "glProgramVertexLimitNV" ffienumintIOV
	1628 -> load' f "glGetProgramEnvParameterIivNV" ffienumuintPtrintIOV
	1629 -> load' f "glGetProgramEnvParameterIuivNV" ffienumuintPtruintIOV
	1630 -> load' f "glGetProgramLocalParameterIivNV" ffienumuintPtrintIOV
	1631 -> load' f "glGetProgramLocalParameterIuivNV" ffienumuintPtruintIOV
	1632 -> load' f "glProgramEnvParameterI4iNV" ffienumuintintintintintIOV
	1633 -> load' f "glProgramEnvParameterI4ivNV" ffienumuintPtrintIOV
	1634 -> load' f "glProgramEnvParameterI4uiNV" ffienumuintuintuintuintuintIOV
	1635 -> load' f "glProgramEnvParameterI4uivNV" ffienumuintPtruintIOV
	1636 -> load' f "glProgramEnvParametersI4ivNV" ffienumuintsizeiPtrintIOV
	1637 -> load' f "glProgramEnvParametersI4uivNV" ffienumuintsizeiPtruintIOV
	1638 -> load' f "glProgramLocalParameterI4iNV" ffienumuintintintintintIOV
	1639 -> load' f "glProgramLocalParameterI4ivNV" ffienumuintPtrintIOV
	1640 -> load' f "glProgramLocalParameterI4uiNV" ffienumuintuintuintuintuintIOV
	1641 -> load' f "glProgramLocalParameterI4uivNV" ffienumuintPtruintIOV
	1642 -> load' f "glProgramLocalParametersI4ivNV" ffienumuintsizeiPtrintIOV
	1643 -> load' f "glProgramLocalParametersI4uivNV" ffienumuintsizeiPtruintIOV
	1644 -> load' f "glGetProgramSubroutineParameteruivNV" ffienumuintPtruintIOV
	1645 -> load' f "glProgramSubroutineParametersuivNV" ffienumsizeiPtruintIOV
	1646 -> load' f "glColor3hNV" ffihalfNVhalfNVhalfNVIOV
	1647 -> load' f "glColor3hvNV" ffiPtrhalfNVIOV
	1648 -> load' f "glColor4hNV" ffihalfNVhalfNVhalfNVhalfNVIOV
	1649 -> load' f "glColor4hvNV" ffiPtrhalfNVIOV
	1650 -> load' f "glFogCoordhNV" ffihalfNVIOV
	1651 -> load' f "glFogCoordhvNV" ffiPtrhalfNVIOV
	1652 -> load' f "glMultiTexCoord1hNV" ffienumhalfNVIOV
	1653 -> load' f "glMultiTexCoord1hvNV" ffienumPtrhalfNVIOV
	1654 -> load' f "glMultiTexCoord2hNV" ffienumhalfNVhalfNVIOV
	1655 -> load' f "glMultiTexCoord2hvNV" ffienumPtrhalfNVIOV
	1656 -> load' f "glMultiTexCoord3hNV" ffienumhalfNVhalfNVhalfNVIOV
	1657 -> load' f "glMultiTexCoord3hvNV" ffienumPtrhalfNVIOV
	1658 -> load' f "glMultiTexCoord4hNV" ffienumhalfNVhalfNVhalfNVhalfNVIOV
	1659 -> load' f "glMultiTexCoord4hvNV" ffienumPtrhalfNVIOV
	1660 -> load' f "glNormal3hNV" ffihalfNVhalfNVhalfNVIOV
	1661 -> load' f "glNormal3hvNV" ffiPtrhalfNVIOV
	1662 -> load' f "glSecondaryColor3hNV" ffihalfNVhalfNVhalfNVIOV
	1663 -> load' f "glSecondaryColor3hvNV" ffiPtrhalfNVIOV
	1664 -> load' f "glTexCoord1hNV" ffihalfNVIOV
	1665 -> load' f "glTexCoord1hvNV" ffiPtrhalfNVIOV
	1666 -> load' f "glTexCoord2hNV" ffihalfNVhalfNVIOV
	1667 -> load' f "glTexCoord2hvNV" ffiPtrhalfNVIOV
	1668 -> load' f "glTexCoord3hNV" ffihalfNVhalfNVhalfNVIOV
	1669 -> load' f "glTexCoord3hvNV" ffiPtrhalfNVIOV
	1670 -> load' f "glTexCoord4hNV" ffihalfNVhalfNVhalfNVhalfNVIOV
	1671 -> load' f "glTexCoord4hvNV" ffiPtrhalfNVIOV
	1672 -> load' f "glVertex2hNV" ffihalfNVhalfNVIOV
	1673 -> load' f "glVertex2hvNV" ffiPtrhalfNVIOV
	1674 -> load' f "glVertex3hNV" ffihalfNVhalfNVhalfNVIOV
	1675 -> load' f "glVertex3hvNV" ffiPtrhalfNVIOV
	1676 -> load' f "glVertex4hNV" ffihalfNVhalfNVhalfNVhalfNVIOV
	1677 -> load' f "glVertex4hvNV" ffiPtrhalfNVIOV
	1678 -> load' f "glVertexAttrib1hNV" ffiuinthalfNVIOV
	1679 -> load' f "glVertexAttrib1hvNV" ffiuintPtrhalfNVIOV
	1680 -> load' f "glVertexAttrib2hNV" ffiuinthalfNVhalfNVIOV
	1681 -> load' f "glVertexAttrib2hvNV" ffiuintPtrhalfNVIOV
	1682 -> load' f "glVertexAttrib3hNV" ffiuinthalfNVhalfNVhalfNVIOV
	1683 -> load' f "glVertexAttrib3hvNV" ffiuintPtrhalfNVIOV
	1684 -> load' f "glVertexAttrib4hNV" ffiuinthalfNVhalfNVhalfNVhalfNVIOV
	1685 -> load' f "glVertexAttrib4hvNV" ffiuintPtrhalfNVIOV
	1686 -> load' f "glVertexAttribs1hvNV" ffiuintsizeiPtrhalfNVIOV
	1687 -> load' f "glVertexAttribs2hvNV" ffiuintsizeiPtrhalfNVIOV
	1688 -> load' f "glVertexAttribs3hvNV" ffiuintsizeiPtrhalfNVIOV
	1689 -> load' f "glVertexAttribs4hvNV" ffiuintsizeiPtrhalfNVIOV
	1690 -> load' f "glVertexWeighthNV" ffihalfNVIOV
	1691 -> load' f "glVertexWeighthvNV" ffiPtrhalfNVIOV
	1692 -> load' f "glVertexAttribDivisorNV" ffiuintuintIOV
	1693 -> load' f "glGetInternalformatSampleivNV" ffienumenumsizeienumsizeiPtrintIOV
	1694 -> load' f "glUniformMatrix2x3fvNV" ffiintsizeibooleanPtrfloatIOV
	1695 -> load' f "glUniformMatrix2x4fvNV" ffiintsizeibooleanPtrfloatIOV
	1696 -> load' f "glUniformMatrix3x2fvNV" ffiintsizeibooleanPtrfloatIOV
	1697 -> load' f "glUniformMatrix3x4fvNV" ffiintsizeibooleanPtrfloatIOV
	1698 -> load' f "glUniformMatrix4x2fvNV" ffiintsizeibooleanPtrfloatIOV
	1699 -> load' f "glUniformMatrix4x3fvNV" ffiintsizeibooleanPtrfloatIOV
	1700 -> load' f "glBeginOcclusionQueryNV" ffiuintIOV
	1701 -> load' f "glDeleteOcclusionQueriesNV" ffisizeiPtruintIOV
	1702 -> load' f "glEndOcclusionQueryNV" ffiIOV
	1703 -> load' f "glGenOcclusionQueriesNV" ffisizeiPtruintIOV
	1704 -> load' f "glGetOcclusionQueryivNV" ffiuintenumPtrintIOV
	1705 -> load' f "glGetOcclusionQueryuivNV" ffiuintenumPtruintIOV
	1706 -> load' f "glIsOcclusionQueryNV" ffiuintIOboolean
	1707 -> load' f "glProgramBufferParametersIivNV" ffienumuintuintsizeiPtrintIOV
	1708 -> load' f "glProgramBufferParametersIuivNV" ffienumuintuintsizeiPtruintIOV
	1709 -> load' f "glProgramBufferParametersfvNV" ffienumuintuintsizeiPtrfloatIOV
	1710 -> load' f "glCopyPathNV" ffiuintuintIOV
	1711 -> load' f "glCoverFillPathInstancedNV" ffisizeienumPtrVuintenumenumPtrfloatIOV
	1712 -> load' f "glCoverFillPathNV" ffiuintenumIOV
	1713 -> load' f "glCoverStrokePathInstancedNV" ffisizeienumPtrVuintenumenumPtrfloatIOV
	1714 -> load' f "glCoverStrokePathNV" ffiuintenumIOV
	1715 -> load' f "glDeletePathsNV" ffiuintsizeiIOV
	1716 -> load' f "glGenPathsNV" ffisizeiIOuint
	1717 -> load' f "glGetPathColorGenfvNV" ffienumenumPtrfloatIOV
	1718 -> load' f "glGetPathColorGenivNV" ffienumenumPtrintIOV
	1719 -> load' f "glGetPathCommandsNV" ffiuintPtrubyteIOV
	1720 -> load' f "glGetPathCoordsNV" ffiuintPtrfloatIOV
	1721 -> load' f "glGetPathDashArrayNV" ffiuintPtrfloatIOV
	1722 -> load' f "glGetPathLengthNV" ffiuintsizeisizeiIOfloat
	1723 -> load' f "glGetPathMetricRangeNV" ffibitfielduintsizeisizeiPtrfloatIOV
	1724 -> load' f "glGetPathMetricsNV" ffibitfieldsizeienumPtrVuintsizeiPtrfloatIOV
	1725 -> load' f "glGetPathParameterfvNV" ffiuintenumPtrfloatIOV
	1726 -> load' f "glGetPathParameterivNV" ffiuintenumPtrintIOV
	1727 -> load' f "glGetPathSpacingNV" ffienumsizeienumPtrVuintfloatfloatenumPtrfloatIOV
	1728 -> load' f "glGetPathTexGenfvNV" ffienumenumPtrfloatIOV
	1729 -> load' f "glGetPathTexGenivNV" ffienumenumPtrintIOV
	1730 -> load' f "glGetProgramResourcefvNV" ffiuintenumuintsizeiPtrenumsizeiPtrsizeiPtrfloatIOV
	1731 -> load' f "glInterpolatePathsNV" ffiuintuintuintfloatIOV
	1732 -> load' f "glIsPathNV" ffiuintIOboolean
	1733 -> load' f "glIsPointInFillPathNV" ffiuintuintfloatfloatIOboolean
	1734 -> load' f "glIsPointInStrokePathNV" ffiuintfloatfloatIOboolean
	1735 -> load' f "glMatrixLoad3x2fNV" ffienumPtrfloatIOV
	1736 -> load' f "glMatrixLoad3x3fNV" ffienumPtrfloatIOV
	1737 -> load' f "glMatrixLoadTranspose3x3fNV" ffienumPtrfloatIOV
	1738 -> load' f "glMatrixMult3x2fNV" ffienumPtrfloatIOV
	1739 -> load' f "glMatrixMult3x3fNV" ffienumPtrfloatIOV
	1740 -> load' f "glMatrixMultTranspose3x3fNV" ffienumPtrfloatIOV
	1741 -> load' f "glPathColorGenNV" ffienumenumenumPtrfloatIOV
	1742 -> load' f "glPathCommandsNV" ffiuintsizeiPtrubytesizeienumPtrVIOV
	1743 -> load' f "glPathCoordsNV" ffiuintsizeienumPtrVIOV
	1744 -> load' f "glPathCoverDepthFuncNV" ffienumIOV
	1745 -> load' f "glPathDashArrayNV" ffiuintsizeiPtrfloatIOV
	1746 -> load' f "glPathFogGenNV" ffienumIOV
	1747 -> load' f "glPathGlyphIndexArrayNV" ffiuintenumPtrVbitfielduintsizeiuintfloatIOenum
	1748 -> load' f "glPathGlyphIndexRangeNV" ffienumPtrVbitfielduintfloatuintIOenum
	1749 -> load' f "glPathGlyphRangeNV" ffiuintenumPtrVbitfielduintsizeienumuintfloatIOV
	1750 -> load' f "glPathGlyphsNV" ffiuintenumPtrVbitfieldsizeienumPtrVenumuintfloatIOV
	1751 -> load' f "glPathMemoryGlyphIndexArrayNV" ffiuintenumsizeiptrPtrVsizeiuintsizeiuintfloatIOenum
	1752 -> load' f "glPathParameterfNV" ffiuintenumfloatIOV
	1753 -> load' f "glPathParameterfvNV" ffiuintenumPtrfloatIOV
	1754 -> load' f "glPathParameteriNV" ffiuintenumintIOV
	1755 -> load' f "glPathParameterivNV" ffiuintenumPtrintIOV
	1756 -> load' f "glPathStencilDepthOffsetNV" ffifloatfloatIOV
	1757 -> load' f "glPathStencilFuncNV" ffienumintuintIOV
	1758 -> load' f "glPathStringNV" ffiuintenumsizeiPtrVIOV
	1759 -> load' f "glPathSubCommandsNV" ffiuintsizeisizeisizeiPtrubytesizeienumPtrVIOV
	1760 -> load' f "glPathSubCoordsNV" ffiuintsizeisizeienumPtrVIOV
	1761 -> load' f "glPathTexGenNV" ffienumenumintPtrfloatIOV
	1762 -> load' f "glPointAlongPathNV" ffiuintsizeisizeifloatPtrfloatPtrfloatPtrfloatPtrfloatIOboolean
	1763 -> load' f "glProgramPathFragmentInputGenNV" ffiuintintenumintPtrfloatIOV
	1764 -> load' f "glStencilFillPathInstancedNV" ffisizeienumPtrVuintenumuintenumPtrfloatIOV
	1765 -> load' f "glStencilFillPathNV" ffiuintenumuintIOV
	1766 -> load' f "glStencilStrokePathInstancedNV" ffisizeienumPtrVuintintuintenumPtrfloatIOV
	1767 -> load' f "glStencilStrokePathNV" ffiuintintuintIOV
	1768 -> load' f "glStencilThenCoverFillPathInstancedNV" ffisizeienumPtrVuintenumuintenumenumPtrfloatIOV
	1769 -> load' f "glStencilThenCoverFillPathNV" ffiuintenumuintenumIOV
	1770 -> load' f "glStencilThenCoverStrokePathInstancedNV" ffisizeienumPtrVuintintuintenumenumPtrfloatIOV
	1771 -> load' f "glStencilThenCoverStrokePathNV" ffiuintintuintenumIOV
	1772 -> load' f "glTransformPathNV" ffiuintuintenumPtrfloatIOV
	1773 -> load' f "glWeightPathsNV" ffiuintsizeiPtruintPtrfloatIOV
	1774 -> load' f "glFlushPixelDataRangeNV" ffienumIOV
	1775 -> load' f "glPixelDataRangeNV" ffienumsizeiPtrVIOV
	1776 -> load' f "glPointParameteriNV" ffienumintIOV
	1777 -> load' f "glPointParameterivNV" ffienumPtrintIOV
	1778 -> load' f "glGetVideoi64vNV" ffiuintenumPtrint64EXTIOV
	1779 -> load' f "glGetVideoivNV" ffiuintenumPtrintIOV
	1780 -> load' f "glGetVideoui64vNV" ffiuintenumPtruint64EXTIOV
	1781 -> load' f "glGetVideouivNV" ffiuintenumPtruintIOV
	1782 -> load' f "glPresentFrameDualFillNV" ffiuintuint64EXTuintuintenumenumuintenumuintenumuintenumuintIOV
	1783 -> load' f "glPresentFrameKeyedNV" ffiuintuint64EXTuintuintenumenumuintuintenumuintuintIOV
	1784 -> load' f "glPrimitiveRestartIndexNV" ffiuintIOV
	1785 -> load' f "glPrimitiveRestartNV" ffiIOV
	1786 -> load' f "glReadBufferNV" ffienumIOV
	1787 -> load' f "glCombinerInputNV" ffienumenumenumenumenumenumIOV
	1788 -> load' f "glCombinerOutputNV" ffienumenumenumenumenumenumenumbooleanbooleanbooleanIOV
	1789 -> load' f "glCombinerParameterfNV" ffienumfloatIOV
	1790 -> load' f "glCombinerParameterfvNV" ffienumPtrfloatIOV
	1791 -> load' f "glCombinerParameteriNV" ffienumintIOV
	1792 -> load' f "glCombinerParameterivNV" ffienumPtrintIOV
	1793 -> load' f "glFinalCombinerInputNV" ffienumenumenumenumIOV
	1794 -> load' f "glGetCombinerInputParameterfvNV" ffienumenumenumenumPtrfloatIOV
	1795 -> load' f "glGetCombinerInputParameterivNV" ffienumenumenumenumPtrintIOV
	1796 -> load' f "glGetCombinerOutputParameterfvNV" ffienumenumenumPtrfloatIOV
	1797 -> load' f "glGetCombinerOutputParameterivNV" ffienumenumenumPtrintIOV
	1798 -> load' f "glGetFinalCombinerInputParameterfvNV" ffienumenumPtrfloatIOV
	1799 -> load' f "glGetFinalCombinerInputParameterivNV" ffienumenumPtrintIOV
	1800 -> load' f "glCombinerStageParameterfvNV" ffienumenumPtrfloatIOV
	1801 -> load' f "glGetCombinerStageParameterfvNV" ffienumenumPtrfloatIOV
	1802 -> load' f "glFramebufferSampleLocationsfvNV" ffienumuintsizeiPtrfloatIOV
	1803 -> load' f "glNamedFramebufferSampleLocationsfvNV" ffiuintuintsizeiPtrfloatIOV
	1804 -> load' f "glResolveDepthValuesNV" ffiIOV
	1805 -> load' f "glGetBufferParameterui64vNV" ffienumenumPtruint64EXTIOV
	1806 -> load' f "glGetIntegerui64vNV" ffienumPtruint64EXTIOV
	1807 -> load' f "glGetNamedBufferParameterui64vNV" ffiuintenumPtruint64EXTIOV
	1808 -> load' f "glIsBufferResidentNV" ffienumIOboolean
	1809 -> load' f "glIsNamedBufferResidentNV" ffiuintIOboolean
	1810 -> load' f "glMakeBufferNonResidentNV" ffienumIOV
	1811 -> load' f "glMakeBufferResidentNV" ffienumenumIOV
	1812 -> load' f "glMakeNamedBufferNonResidentNV" ffiuintIOV
	1813 -> load' f "glMakeNamedBufferResidentNV" ffiuintenumIOV
	1814 -> load' f "glProgramUniformui64NV" ffiuintintuint64EXTIOV
	1815 -> load' f "glProgramUniformui64vNV" ffiuintintsizeiPtruint64EXTIOV
	1816 -> load' f "glUniformui64NV" ffiintuint64EXTIOV
	1817 -> load' f "glUniformui64vNV" ffiintsizeiPtruint64EXTIOV
	1818 -> load' f "glTextureBarrierNV" ffiIOV
	1819 -> load' f "glTexImage2DMultisampleCoverageNV" ffienumsizeisizeiintsizeisizeibooleanIOV
	1820 -> load' f "glTexImage3DMultisampleCoverageNV" ffienumsizeisizeiintsizeisizeisizeibooleanIOV
	1821 -> load' f "glTextureImage2DMultisampleCoverageNV" ffiuintenumsizeisizeiintsizeisizeibooleanIOV
	1822 -> load' f "glTextureImage2DMultisampleNV" ffiuintenumsizeiintsizeisizeibooleanIOV
	1823 -> load' f "glTextureImage3DMultisampleCoverageNV" ffiuintenumsizeisizeiintsizeisizeisizeibooleanIOV
	1824 -> load' f "glTextureImage3DMultisampleNV" ffiuintenumsizeiintsizeisizeisizeibooleanIOV
	1825 -> load' f "glActiveVaryingNV" ffiuintPtrcharIOV
	1826 -> load' f "glBeginTransformFeedbackNV" ffienumIOV
	1827 -> load' f "glBindBufferBaseNV" ffienumuintuintIOV
	1828 -> load' f "glBindBufferOffsetNV" ffienumuintuintintptrIOV
	1829 -> load' f "glBindBufferRangeNV" ffienumuintuintintptrsizeiptrIOV
	1830 -> load' f "glEndTransformFeedbackNV" ffiIOV
	1831 -> load' f "glGetActiveVaryingNV" ffiuintuintsizeiPtrsizeiPtrsizeiPtrenumPtrcharIOV
	1832 -> load' f "glGetTransformFeedbackVaryingNV" ffiuintuintPtrintIOV
	1833 -> load' f "glGetVaryingLocationNV" ffiuintPtrcharIOint
	1834 -> load' f "glTransformFeedbackAttribsNV" ffisizeiPtrintenumIOV
	1835 -> load' f "glTransformFeedbackStreamAttribsNV" ffisizeiPtrintsizeiPtrintenumIOV
	1836 -> load' f "glTransformFeedbackVaryingsNV" ffiuintsizeiPtrintenumIOV
	1837 -> load' f "glBindTransformFeedbackNV" ffienumuintIOV
	1838 -> load' f "glDeleteTransformFeedbacksNV" ffisizeiPtruintIOV
	1839 -> load' f "glDrawTransformFeedbackNV" ffienumuintIOV
	1840 -> load' f "glGenTransformFeedbacksNV" ffisizeiPtruintIOV
	1841 -> load' f "glIsTransformFeedbackNV" ffiuintIOboolean
	1842 -> load' f "glPauseTransformFeedbackNV" ffiIOV
	1843 -> load' f "glResumeTransformFeedbackNV" ffiIOV
	1844 -> load' f "glVDPAUFiniNV" ffiIOV
	1845 -> load' f "glVDPAUGetSurfaceivNV" ffivdpauSurfaceNVenumsizeiPtrsizeiPtrintIOV
	1846 -> load' f "glVDPAUInitNV" ffiPtrVPtrVIOV
	1847 -> load' f "glVDPAUIsSurfaceNV" ffivdpauSurfaceNVIOboolean
	1848 -> load' f "glVDPAUMapSurfacesNV" ffisizeiPtrvdpauSurfaceNVIOV
	1849 -> load' f "glVDPAURegisterOutputSurfaceNV" ffiPtrVenumsizeiPtruintIOvdpauSurfaceNV
	1850 -> load' f "glVDPAURegisterVideoSurfaceNV" ffiPtrVenumsizeiPtruintIOvdpauSurfaceNV
	1851 -> load' f "glVDPAUSurfaceAccessNV" ffivdpauSurfaceNVenumIOV
	1852 -> load' f "glVDPAUUnmapSurfacesNV" ffisizeiPtrvdpauSurfaceNVIOV
	1853 -> load' f "glVDPAUUnregisterSurfaceNV" ffivdpauSurfaceNVIOV
	1854 -> load' f "glFlushVertexArrayRangeNV" ffiIOV
	1855 -> load' f "glVertexArrayRangeNV" ffisizeiPtrVIOV
	1856 -> load' f "glGetVertexAttribLi64vNV" ffiuintenumPtrint64EXTIOV
	1857 -> load' f "glGetVertexAttribLui64vNV" ffiuintenumPtruint64EXTIOV
	1858 -> load' f "glVertexAttribL1i64NV" ffiuintint64EXTIOV
	1859 -> load' f "glVertexAttribL1i64vNV" ffiuintPtrint64EXTIOV
	1860 -> load' f "glVertexAttribL1ui64NV" ffiuintuint64EXTIOV
	1861 -> load' f "glVertexAttribL1ui64vNV" ffiuintPtruint64EXTIOV
	1862 -> load' f "glVertexAttribL2i64NV" ffiuintint64EXTint64EXTIOV
	1863 -> load' f "glVertexAttribL2i64vNV" ffiuintPtrint64EXTIOV
	1864 -> load' f "glVertexAttribL2ui64NV" ffiuintuint64EXTuint64EXTIOV
	1865 -> load' f "glVertexAttribL2ui64vNV" ffiuintPtruint64EXTIOV
	1866 -> load' f "glVertexAttribL3i64NV" ffiuintint64EXTint64EXTint64EXTIOV
	1867 -> load' f "glVertexAttribL3i64vNV" ffiuintPtrint64EXTIOV
	1868 -> load' f "glVertexAttribL3ui64NV" ffiuintuint64EXTuint64EXTuint64EXTIOV
	1869 -> load' f "glVertexAttribL3ui64vNV" ffiuintPtruint64EXTIOV
	1870 -> load' f "glVertexAttribL4i64NV" ffiuintint64EXTint64EXTint64EXTint64EXTIOV
	1871 -> load' f "glVertexAttribL4i64vNV" ffiuintPtrint64EXTIOV
	1872 -> load' f "glVertexAttribL4ui64NV" ffiuintuint64EXTuint64EXTuint64EXTuint64EXTIOV
	1873 -> load' f "glVertexAttribL4ui64vNV" ffiuintPtruint64EXTIOV
	1874 -> load' f "glVertexAttribLFormatNV" ffiuintintenumsizeiIOV
	1875 -> load' f "glBufferAddressRangeNV" ffienumuintuint64EXTsizeiptrIOV
	1876 -> load' f "glColorFormatNV" ffiintenumsizeiIOV
	1877 -> load' f "glEdgeFlagFormatNV" ffisizeiIOV
	1878 -> load' f "glFogCoordFormatNV" ffienumsizeiIOV
	1879 -> load' f "glGetIntegerui64i_vNV" ffienumuintPtruint64EXTIOV
	1880 -> load' f "glIndexFormatNV" ffienumsizeiIOV
	1881 -> load' f "glNormalFormatNV" ffienumsizeiIOV
	1882 -> load' f "glSecondaryColorFormatNV" ffiintenumsizeiIOV
	1883 -> load' f "glTexCoordFormatNV" ffiintenumsizeiIOV
	1884 -> load' f "glVertexAttribFormatNV" ffiuintintenumbooleansizeiIOV
	1885 -> load' f "glVertexAttribIFormatNV" ffiuintintenumsizeiIOV
	1886 -> load' f "glVertexFormatNV" ffiintenumsizeiIOV
	1887 -> load' f "glAreProgramsResidentNV" ffisizeiPtruintPtrbooleanIOboolean
	1888 -> load' f "glBindProgramNV" ffienumuintIOV
	1889 -> load' f "glDeleteProgramsNV" ffisizeiPtruintIOV
	1890 -> load' f "glExecuteProgramNV" ffienumuintPtrfloatIOV
	1891 -> load' f "glGenProgramsNV" ffisizeiPtruintIOV
	1892 -> load' f "glGetProgramParameterdvNV" ffienumuintenumPtrdoubleIOV
	1893 -> load' f "glGetProgramParameterfvNV" ffienumuintenumPtrfloatIOV
	1894 -> load' f "glGetProgramStringNV" ffiuintenumPtrubyteIOV
	1895 -> load' f "glGetProgramivNV" ffiuintenumPtrintIOV
	1896 -> load' f "glGetTrackMatrixivNV" ffienumuintenumPtrintIOV
	1897 -> load' f "glGetVertexAttribPointervNV" ffiuintenumPtrVIOV
	1898 -> load' f "glGetVertexAttribdvNV" ffiuintenumPtrdoubleIOV
	1899 -> load' f "glGetVertexAttribfvNV" ffiuintenumPtrfloatIOV
	1900 -> load' f "glGetVertexAttribivNV" ffiuintenumPtrintIOV
	1901 -> load' f "glIsProgramNV" ffiuintIOboolean
	1902 -> load' f "glLoadProgramNV" ffienumuintsizeiPtrubyteIOV
	1903 -> load' f "glProgramParameter4dNV" ffienumuintdoubledoubledoubledoubleIOV
	1904 -> load' f "glProgramParameter4dvNV" ffienumuintPtrdoubleIOV
	1905 -> load' f "glProgramParameter4fNV" ffienumuintfloatfloatfloatfloatIOV
	1906 -> load' f "glProgramParameter4fvNV" ffienumuintPtrfloatIOV
	1907 -> load' f "glProgramParameters4dvNV" ffienumuintsizeiPtrdoubleIOV
	1908 -> load' f "glProgramParameters4fvNV" ffienumuintsizeiPtrfloatIOV
	1909 -> load' f "glRequestResidentProgramsNV" ffisizeiPtruintIOV
	1910 -> load' f "glTrackMatrixNV" ffienumuintenumenumIOV
	1911 -> load' f "glVertexAttrib1dNV" ffiuintdoubleIOV
	1912 -> load' f "glVertexAttrib1dvNV" ffiuintPtrdoubleIOV
	1913 -> load' f "glVertexAttrib1fNV" ffiuintfloatIOV
	1914 -> load' f "glVertexAttrib1fvNV" ffiuintPtrfloatIOV
	1915 -> load' f "glVertexAttrib1sNV" ffiuintshortIOV
	1916 -> load' f "glVertexAttrib1svNV" ffiuintPtrshortIOV
	1917 -> load' f "glVertexAttrib2dNV" ffiuintdoubledoubleIOV
	1918 -> load' f "glVertexAttrib2dvNV" ffiuintPtrdoubleIOV
	1919 -> load' f "glVertexAttrib2fNV" ffiuintfloatfloatIOV
	1920 -> load' f "glVertexAttrib2fvNV" ffiuintPtrfloatIOV
	1921 -> load' f "glVertexAttrib2sNV" ffiuintshortshortIOV
	1922 -> load' f "glVertexAttrib2svNV" ffiuintPtrshortIOV
	1923 -> load' f "glVertexAttrib3dNV" ffiuintdoubledoubledoubleIOV
	1924 -> load' f "glVertexAttrib3dvNV" ffiuintPtrdoubleIOV
	1925 -> load' f "glVertexAttrib3fNV" ffiuintfloatfloatfloatIOV
	1926 -> load' f "glVertexAttrib3fvNV" ffiuintPtrfloatIOV
	1927 -> load' f "glVertexAttrib3sNV" ffiuintshortshortshortIOV
	1928 -> load' f "glVertexAttrib3svNV" ffiuintPtrshortIOV
	1929 -> load' f "glVertexAttrib4dNV" ffiuintdoubledoubledoubledoubleIOV
	1930 -> load' f "glVertexAttrib4dvNV" ffiuintPtrdoubleIOV
	1931 -> load' f "glVertexAttrib4fNV" ffiuintfloatfloatfloatfloatIOV
	1932 -> load' f "glVertexAttrib4fvNV" ffiuintPtrfloatIOV
	1933 -> load' f "glVertexAttrib4sNV" ffiuintshortshortshortshortIOV
	1934 -> load' f "glVertexAttrib4svNV" ffiuintPtrshortIOV
	1935 -> load' f "glVertexAttrib4ubNV" ffiuintubyteubyteubyteubyteIOV
	1936 -> load' f "glVertexAttrib4ubvNV" ffiuintPtrubyteIOV
	1937 -> load' f "glVertexAttribPointerNV" ffiuintintenumsizeiPtrVIOV
	1938 -> load' f "glVertexAttribs1dvNV" ffiuintsizeiPtrdoubleIOV
	1939 -> load' f "glVertexAttribs1fvNV" ffiuintsizeiPtrfloatIOV
	1940 -> load' f "glVertexAttribs1svNV" ffiuintsizeiPtrshortIOV
	1941 -> load' f "glVertexAttribs2dvNV" ffiuintsizeiPtrdoubleIOV
	1942 -> load' f "glVertexAttribs2fvNV" ffiuintsizeiPtrfloatIOV
	1943 -> load' f "glVertexAttribs2svNV" ffiuintsizeiPtrshortIOV
	1944 -> load' f "glVertexAttribs3dvNV" ffiuintsizeiPtrdoubleIOV
	1945 -> load' f "glVertexAttribs3fvNV" ffiuintsizeiPtrfloatIOV
	1946 -> load' f "glVertexAttribs3svNV" ffiuintsizeiPtrshortIOV
	1947 -> load' f "glVertexAttribs4dvNV" ffiuintsizeiPtrdoubleIOV
	1948 -> load' f "glVertexAttribs4fvNV" ffiuintsizeiPtrfloatIOV
	1949 -> load' f "glVertexAttribs4svNV" ffiuintsizeiPtrshortIOV
	1950 -> load' f "glVertexAttribs4ubvNV" ffiuintsizeiPtrubyteIOV
	1951 -> load' f "glGetVertexAttribIivEXT" ffiuintenumPtrintIOV
	1952 -> load' f "glGetVertexAttribIuivEXT" ffiuintenumPtruintIOV
	1953 -> load' f "glVertexAttribI1iEXT" ffiuintintIOV
	1954 -> load' f "glVertexAttribI1ivEXT" ffiuintPtrintIOV
	1955 -> load' f "glVertexAttribI1uiEXT" ffiuintuintIOV
	1956 -> load' f "glVertexAttribI1uivEXT" ffiuintPtruintIOV
	1957 -> load' f "glVertexAttribI2iEXT" ffiuintintintIOV
	1958 -> load' f "glVertexAttribI2ivEXT" ffiuintPtrintIOV
	1959 -> load' f "glVertexAttribI2uiEXT" ffiuintuintuintIOV
	1960 -> load' f "glVertexAttribI2uivEXT" ffiuintPtruintIOV
	1961 -> load' f "glVertexAttribI3iEXT" ffiuintintintintIOV
	1962 -> load' f "glVertexAttribI3ivEXT" ffiuintPtrintIOV
	1963 -> load' f "glVertexAttribI3uiEXT" ffiuintuintuintuintIOV
	1964 -> load' f "glVertexAttribI3uivEXT" ffiuintPtruintIOV
	1965 -> load' f "glVertexAttribI4bvEXT" ffiuintPtrbyteIOV
	1966 -> load' f "glVertexAttribI4iEXT" ffiuintintintintintIOV
	1967 -> load' f "glVertexAttribI4ivEXT" ffiuintPtrintIOV
	1968 -> load' f "glVertexAttribI4svEXT" ffiuintPtrshortIOV
	1969 -> load' f "glVertexAttribI4ubvEXT" ffiuintPtrubyteIOV
	1970 -> load' f "glVertexAttribI4uiEXT" ffiuintuintuintuintuintIOV
	1971 -> load' f "glVertexAttribI4uivEXT" ffiuintPtruintIOV
	1972 -> load' f "glVertexAttribI4usvEXT" ffiuintPtrushortIOV
	1973 -> load' f "glVertexAttribIPointerEXT" ffiuintintenumsizeiPtrVIOV
	1974 -> load' f "glBeginVideoCaptureNV" ffiuintIOV
	1975 -> load' f "glBindVideoCaptureStreamBufferNV" ffiuintuintenumintptrARBIOV
	1976 -> load' f "glBindVideoCaptureStreamTextureNV" ffiuintuintenumenumuintIOV
	1977 -> load' f "glEndVideoCaptureNV" ffiuintIOV
	1978 -> load' f "glGetVideoCaptureStreamdvNV" ffiuintuintenumPtrdoubleIOV
	1979 -> load' f "glGetVideoCaptureStreamfvNV" ffiuintuintenumPtrfloatIOV
	1980 -> load' f "glGetVideoCaptureStreamivNV" ffiuintuintenumPtrintIOV
	1981 -> load' f "glGetVideoCaptureivNV" ffiuintenumPtrintIOV
	1982 -> load' f "glVideoCaptureNV" ffiuintPtruintPtruint64EXTIOenum
	1983 -> load' f "glVideoCaptureStreamParameterdvNV" ffiuintuintenumPtrdoubleIOV
	1984 -> load' f "glVideoCaptureStreamParameterfvNV" ffiuintuintenumPtrfloatIOV
	1985 -> load' f "glVideoCaptureStreamParameterivNV" ffiuintuintenumPtrintIOV
	1986 -> load' f "glBeginConditionalRenderNVX" ffiuintIOV
	1987 -> load' f "glEndConditionalRenderNVX" ffiIOV
	1988 -> load' f "glBlendEquationSeparateOES" ffienumenumIOV
	1989 -> load' f "glBlendFuncSeparateOES" ffienumenumenumenumIOV
	1990 -> load' f "glBlendEquationOES" ffienumIOV
	1991 -> load' f "glMultiTexCoord1bOES" ffienumbyteIOV
	1992 -> load' f "glMultiTexCoord1bvOES" ffienumPtrbyteIOV
	1993 -> load' f "glMultiTexCoord2bOES" ffienumbytebyteIOV
	1994 -> load' f "glMultiTexCoord2bvOES" ffienumPtrbyteIOV
	1995 -> load' f "glMultiTexCoord3bOES" ffienumbytebytebyteIOV
	1996 -> load' f "glMultiTexCoord3bvOES" ffienumPtrbyteIOV
	1997 -> load' f "glMultiTexCoord4bOES" ffienumbytebytebytebyteIOV
	1998 -> load' f "glMultiTexCoord4bvOES" ffienumPtrbyteIOV
	1999 -> load' f "glTexCoord1bOES" ffibyteIOV
	2000 -> load' f "glTexCoord1bvOES" ffiPtrbyteIOV
	2001 -> load' f "glTexCoord2bOES" ffibytebyteIOV
	2002 -> load' f "glTexCoord2bvOES" ffiPtrbyteIOV
	2003 -> load' f "glTexCoord3bOES" ffibytebytebyteIOV
	2004 -> load' f "glTexCoord3bvOES" ffiPtrbyteIOV
	2005 -> load' f "glTexCoord4bOES" ffibytebytebytebyteIOV
	2006 -> load' f "glTexCoord4bvOES" ffiPtrbyteIOV
	2007 -> load' f "glVertex2bOES" ffibytebyteIOV
	2008 -> load' f "glVertex2bvOES" ffiPtrbyteIOV
	2009 -> load' f "glVertex3bOES" ffibytebytebyteIOV
	2010 -> load' f "glVertex3bvOES" ffiPtrbyteIOV
	2011 -> load' f "glVertex4bOES" ffibytebytebytebyteIOV
	2012 -> load' f "glVertex4bvOES" ffiPtrbyteIOV
	2013 -> load' f "glDrawTexfOES" ffifloatfloatfloatfloatfloatIOV
	2014 -> load' f "glDrawTexfvOES" ffiPtrfloatIOV
	2015 -> load' f "glDrawTexiOES" ffiintintintintintIOV
	2016 -> load' f "glDrawTexivOES" ffiPtrintIOV
	2017 -> load' f "glDrawTexsOES" ffishortshortshortshortshortIOV
	2018 -> load' f "glDrawTexsvOES" ffiPtrshortIOV
	2019 -> load' f "glDrawTexxOES" ffifixedfixedfixedfixedfixedIOV
	2020 -> load' f "glDrawTexxvOES" ffiPtrfixedIOV
	2021 -> load' f "glEGLImageTargetRenderbufferStorageOES" ffienumeglImageOESIOV
	2022 -> load' f "glEGLImageTargetTexture2DOES" ffienumeglImageOESIOV
	2023 -> load' f "glAccumxOES" ffienumfixedIOV
	2024 -> load' f "glAlphaFuncxOES" ffienumfixedIOV
	2025 -> load' f "glBitmapxOES" ffisizeisizeifixedfixedfixedfixedPtrubyteIOV
	2026 -> load' f "glBlendColorxOES" ffifixedfixedfixedfixedIOV
	2027 -> load' f "glClearAccumxOES" ffifixedfixedfixedfixedIOV
	2028 -> load' f "glClearColorxOES" ffifixedfixedfixedfixedIOV
	2029 -> load' f "glClearDepthxOES" ffifixedIOV
	2030 -> load' f "glClipPlanexOES" ffienumPtrfixedIOV
	2031 -> load' f "glColor3xOES" ffifixedfixedfixedIOV
	2032 -> load' f "glColor3xvOES" ffiPtrfixedIOV
	2033 -> load' f "glColor4xOES" ffifixedfixedfixedfixedIOV
	2034 -> load' f "glColor4xvOES" ffiPtrfixedIOV
	2035 -> load' f "glConvolutionParameterxOES" ffienumenumfixedIOV
	2036 -> load' f "glConvolutionParameterxvOES" ffienumenumPtrfixedIOV
	2037 -> load' f "glDepthRangexOES" ffifixedfixedIOV
	2038 -> load' f "glEvalCoord1xOES" ffifixedIOV
	2039 -> load' f "glEvalCoord1xvOES" ffiPtrfixedIOV
	2040 -> load' f "glEvalCoord2xOES" ffifixedfixedIOV
	2041 -> load' f "glEvalCoord2xvOES" ffiPtrfixedIOV
	2042 -> load' f "glFeedbackBufferxOES" ffisizeienumPtrfixedIOV
	2043 -> load' f "glFogxOES" ffienumfixedIOV
	2044 -> load' f "glFogxvOES" ffienumPtrfixedIOV
	2045 -> load' f "glFrustumxOES" ffifixedfixedfixedfixedfixedfixedIOV
	2046 -> load' f "glGetClipPlanexOES" ffienumPtrfixedIOV
	2047 -> load' f "glGetConvolutionParameterxvOES" ffienumenumPtrfixedIOV
	2048 -> load' f "glGetFixedvOES" ffienumPtrfixedIOV
	2049 -> load' f "glGetHistogramParameterxvOES" ffienumenumPtrfixedIOV
	2050 -> load' f "glGetLightxOES" ffienumenumPtrfixedIOV
	2051 -> load' f "glGetLightxvOES" ffienumenumPtrfixedIOV
	2052 -> load' f "glGetMapxvOES" ffienumenumPtrfixedIOV
	2053 -> load' f "glGetMaterialxOES" ffienumenumfixedIOV
	2054 -> load' f "glGetMaterialxvOES" ffienumenumPtrfixedIOV
	2055 -> load' f "glGetPixelMapxv" ffienumintPtrfixedIOV
	2056 -> load' f "glGetTexEnvxvOES" ffienumenumPtrfixedIOV
	2057 -> load' f "glGetTexGenxvOES" ffienumenumPtrfixedIOV
	2058 -> load' f "glGetTexLevelParameterxvOES" ffienumintenumPtrfixedIOV
	2059 -> load' f "glGetTexParameterxvOES" ffienumenumPtrfixedIOV
	2060 -> load' f "glIndexxOES" ffifixedIOV
	2061 -> load' f "glIndexxvOES" ffiPtrfixedIOV
	2062 -> load' f "glLightModelxOES" ffienumfixedIOV
	2063 -> load' f "glLightModelxvOES" ffienumPtrfixedIOV
	2064 -> load' f "glLightxOES" ffienumenumfixedIOV
	2065 -> load' f "glLightxvOES" ffienumenumPtrfixedIOV
	2066 -> load' f "glLineWidthxOES" ffifixedIOV
	2067 -> load' f "glLoadMatrixxOES" ffiPtrfixedIOV
	2068 -> load' f "glLoadTransposeMatrixxOES" ffiPtrfixedIOV
	2069 -> load' f "glMap1xOES" ffienumfixedfixedintintfixedIOV
	2070 -> load' f "glMap2xOES" ffienumfixedfixedintintfixedfixedintintfixedIOV
	2071 -> load' f "glMapGrid1xOES" ffiintfixedfixedIOV
	2072 -> load' f "glMapGrid2xOES" ffiintfixedfixedfixedfixedIOV
	2073 -> load' f "glMaterialxOES" ffienumenumfixedIOV
	2074 -> load' f "glMaterialxvOES" ffienumenumPtrfixedIOV
	2075 -> load' f "glMultMatrixxOES" ffiPtrfixedIOV
	2076 -> load' f "glMultTransposeMatrixxOES" ffiPtrfixedIOV
	2077 -> load' f "glMultiTexCoord1xOES" ffienumfixedIOV
	2078 -> load' f "glMultiTexCoord1xvOES" ffienumPtrfixedIOV
	2079 -> load' f "glMultiTexCoord2xOES" ffienumfixedfixedIOV
	2080 -> load' f "glMultiTexCoord2xvOES" ffienumPtrfixedIOV
	2081 -> load' f "glMultiTexCoord3xOES" ffienumfixedfixedfixedIOV
	2082 -> load' f "glMultiTexCoord3xvOES" ffienumPtrfixedIOV
	2083 -> load' f "glMultiTexCoord4xOES" ffienumfixedfixedfixedfixedIOV
	2084 -> load' f "glMultiTexCoord4xvOES" ffienumPtrfixedIOV
	2085 -> load' f "glNormal3xOES" ffifixedfixedfixedIOV
	2086 -> load' f "glNormal3xvOES" ffiPtrfixedIOV
	2087 -> load' f "glOrthoxOES" ffifixedfixedfixedfixedfixedfixedIOV
	2088 -> load' f "glPassThroughxOES" ffifixedIOV
	2089 -> load' f "glPixelMapx" ffienumintPtrfixedIOV
	2090 -> load' f "glPixelStorex" ffienumfixedIOV
	2091 -> load' f "glPixelTransferxOES" ffienumfixedIOV
	2092 -> load' f "glPixelZoomxOES" ffifixedfixedIOV
	2093 -> load' f "glPointParameterxOES" ffienumfixedIOV
	2094 -> load' f "glPointParameterxvOES" ffienumPtrfixedIOV
	2095 -> load' f "glPointSizexOES" ffifixedIOV
	2096 -> load' f "glPolygonOffsetxOES" ffifixedfixedIOV
	2097 -> load' f "glPrioritizeTexturesxOES" ffisizeiPtruintPtrfixedIOV
	2098 -> load' f "glRasterPos2xOES" ffifixedfixedIOV
	2099 -> load' f "glRasterPos2xvOES" ffiPtrfixedIOV
	2100 -> load' f "glRasterPos3xOES" ffifixedfixedfixedIOV
	2101 -> load' f "glRasterPos3xvOES" ffiPtrfixedIOV
	2102 -> load' f "glRasterPos4xOES" ffifixedfixedfixedfixedIOV
	2103 -> load' f "glRasterPos4xvOES" ffiPtrfixedIOV
	2104 -> load' f "glRectxOES" ffifixedfixedfixedfixedIOV
	2105 -> load' f "glRectxvOES" ffiPtrfixedPtrfixedIOV
	2106 -> load' f "glRotatexOES" ffifixedfixedfixedfixedIOV
	2107 -> load' f "glSampleCoverageOES" ffifixedbooleanIOV
	2108 -> load' f "glSampleCoveragexOES" fficlampxbooleanIOV
	2109 -> load' f "glScalexOES" ffifixedfixedfixedIOV
	2110 -> load' f "glTexCoord1xOES" ffifixedIOV
	2111 -> load' f "glTexCoord1xvOES" ffiPtrfixedIOV
	2112 -> load' f "glTexCoord2xOES" ffifixedfixedIOV
	2113 -> load' f "glTexCoord2xvOES" ffiPtrfixedIOV
	2114 -> load' f "glTexCoord3xOES" ffifixedfixedfixedIOV
	2115 -> load' f "glTexCoord3xvOES" ffiPtrfixedIOV
	2116 -> load' f "glTexCoord4xOES" ffifixedfixedfixedfixedIOV
	2117 -> load' f "glTexCoord4xvOES" ffiPtrfixedIOV
	2118 -> load' f "glTexEnvxOES" ffienumenumfixedIOV
	2119 -> load' f "glTexEnvxvOES" ffienumenumPtrfixedIOV
	2120 -> load' f "glTexGenxOES" ffienumenumfixedIOV
	2121 -> load' f "glTexGenxvOES" ffienumenumPtrfixedIOV
	2122 -> load' f "glTexParameterxOES" ffienumenumfixedIOV
	2123 -> load' f "glTexParameterxvOES" ffienumenumPtrfixedIOV
	2124 -> load' f "glTranslatexOES" ffifixedfixedfixedIOV
	2125 -> load' f "glVertex2xOES" ffifixedIOV
	2126 -> load' f "glVertex2xvOES" ffiPtrfixedIOV
	2127 -> load' f "glVertex3xOES" ffifixedfixedIOV
	2128 -> load' f "glVertex3xvOES" ffiPtrfixedIOV
	2129 -> load' f "glVertex4xOES" ffifixedfixedfixedIOV
	2130 -> load' f "glVertex4xvOES" ffiPtrfixedIOV
	2131 -> load' f "glBindFramebufferOES" ffienumuintIOV
	2132 -> load' f "glBindRenderbufferOES" ffienumuintIOV
	2133 -> load' f "glCheckFramebufferStatusOES" ffienumIOenum
	2134 -> load' f "glDeleteFramebuffersOES" ffisizeiPtruintIOV
	2135 -> load' f "glDeleteRenderbuffersOES" ffisizeiPtruintIOV
	2136 -> load' f "glFramebufferRenderbufferOES" ffienumenumenumuintIOV
	2137 -> load' f "glFramebufferTexture2DOES" ffienumenumenumuintintIOV
	2138 -> load' f "glGenFramebuffersOES" ffisizeiPtruintIOV
	2139 -> load' f "glGenRenderbuffersOES" ffisizeiPtruintIOV
	2140 -> load' f "glGenerateMipmapOES" ffienumIOV
	2141 -> load' f "glGetFramebufferAttachmentParameterivOES" ffienumenumenumPtrintIOV
	2142 -> load' f "glGetRenderbufferParameterivOES" ffienumenumPtrintIOV
	2143 -> load' f "glIsFramebufferOES" ffiuintIOboolean
	2144 -> load' f "glIsRenderbufferOES" ffiuintIOboolean
	2145 -> load' f "glRenderbufferStorageOES" ffienumenumsizeisizeiIOV
	2146 -> load' f "glGetProgramBinaryOES" ffiuintsizeiPtrsizeiPtrenumPtrVIOV
	2147 -> load' f "glProgramBinaryOES" ffiuintenumPtrVintIOV
	2148 -> load' f "glGetBufferPointervOES" ffienumenumPtrVIOV
	2149 -> load' f "glMapBufferOES" ffienumenumIOPtrV
	2150 -> load' f "glUnmapBufferOES" ffienumIOboolean
	2151 -> load' f "glCurrentPaletteMatrixOES" ffiuintIOV
	2152 -> load' f "glLoadPaletteFromModelViewMatrixOES" ffiIOV
	2153 -> load' f "glMatrixIndexPointerOES" ffiintenumsizeiPtrVIOV
	2154 -> load' f "glWeightPointerOES" ffiintenumsizeiPtrVIOV
	2155 -> load' f "glPointSizePointerOES" ffienumsizeiPtrVIOV
	2156 -> load' f "glQueryMatrixxOES" ffiPtrfixedPtrintIObitfield
	2157 -> load' f "glMinSampleShadingOES" ffifloatIOV
	2158 -> load' f "glClearDepthfOES" fficlampfIOV
	2159 -> load' f "glClipPlanefOES" ffienumPtrfloatIOV
	2160 -> load' f "glDepthRangefOES" fficlampfclampfIOV
	2161 -> load' f "glFrustumfOES" ffifloatfloatfloatfloatfloatfloatIOV
	2162 -> load' f "glGetClipPlanefOES" ffienumPtrfloatIOV
	2163 -> load' f "glOrthofOES" ffifloatfloatfloatfloatfloatfloatIOV
	2164 -> load' f "glCompressedTexImage3DOES" ffienumintenumsizeisizeisizeiintsizeiPtrVIOV
	2165 -> load' f "glCompressedTexSubImage3DOES" ffienumintintintintsizeisizeisizeienumsizeiPtrVIOV
	2166 -> load' f "glCopyTexSubImage3DOES" ffienumintintintintintintsizeisizeiIOV
	2167 -> load' f "glFramebufferTexture3DOES" ffienumenumenumuintintintIOV
	2168 -> load' f "glTexImage3DOES" ffienumintenumsizeisizeisizeiintenumenumPtrVIOV
	2169 -> load' f "glTexSubImage3DOES" ffienumintintintintsizeisizeisizeienumenumPtrVIOV
	2170 -> load' f "glGetTexGenfvOES" ffienumenumPtrfloatIOV
	2171 -> load' f "glGetTexGenivOES" ffienumenumPtrintIOV
	2172 -> load' f "glTexGenfOES" ffienumenumfloatIOV
	2173 -> load' f "glTexGenfvOES" ffienumenumPtrfloatIOV
	2174 -> load' f "glTexGeniOES" ffienumenumintIOV
	2175 -> load' f "glTexGenivOES" ffienumenumPtrintIOV
	2176 -> load' f "glTexStorage3DMultisampleOES" ffienumsizeienumsizeisizeisizeibooleanIOV
	2177 -> load' f "glBindVertexArrayOES" ffiuintIOV
	2178 -> load' f "glDeleteVertexArraysOES" ffisizeiPtruintIOV
	2179 -> load' f "glGenVertexArraysOES" ffisizeiPtruintIOV
	2180 -> load' f "glIsVertexArrayOES" ffiuintIOboolean
	2181 -> load' f "glHintPGI" ffienumintIOV
	2182 -> load' f "glAlphaFuncQCOM" ffienumclampfIOV
	2183 -> load' f "glDisableDriverControlQCOM" ffiuintIOV
	2184 -> load' f "glEnableDriverControlQCOM" ffiuintIOV
	2185 -> load' f "glGetDriverControlStringQCOM" ffiuintsizeiPtrsizeiPtrcharIOV
	2186 -> load' f "glGetDriverControlsQCOM" ffiPtrintsizeiPtruintIOV
	2187 -> load' f "glExtGetBufferPointervQCOM" ffienumPtrVIOV
	2188 -> load' f "glExtGetBuffersQCOM" ffiPtruintintPtrintIOV
	2189 -> load' f "glExtGetFramebuffersQCOM" ffiPtruintintPtrintIOV
	2190 -> load' f "glExtGetRenderbuffersQCOM" ffiPtruintintPtrintIOV
	2191 -> load' f "glExtGetTexLevelParameterivQCOM" ffiuintenumintenumPtrintIOV
	2192 -> load' f "glExtGetTexSubImageQCOM" ffienumintintintintsizeisizeisizeienumenumPtrVIOV
	2193 -> load' f "glExtGetTexturesQCOM" ffiPtruintintPtrintIOV
	2194 -> load' f "glExtTexObjectStateOverrideiQCOM" ffienumenumintIOV
	2195 -> load' f "glExtGetProgramBinarySourceQCOM" ffiuintenumPtrcharPtrintIOV
	2196 -> load' f "glExtGetProgramsQCOM" ffiPtruintintPtrintIOV
	2197 -> load' f "glExtGetShadersQCOM" ffiPtruintintPtrintIOV
	2198 -> load' f "glExtIsProgramBinaryQCOM" ffiuintIOboolean
	2199 -> load' f "glEndTilingQCOM" ffibitfieldIOV
	2200 -> load' f "glStartTilingQCOM" ffiuintuintuintuintbitfieldIOV
	2201 -> load' f "glColorTableParameterfvSGI" ffienumenumPtrfloatIOV
	2202 -> load' f "glColorTableParameterivSGI" ffienumenumPtrintIOV
	2203 -> load' f "glColorTableSGI" ffienumenumsizeienumenumPtrVIOV
	2204 -> load' f "glCopyColorTableSGI" ffienumenumintintsizeiIOV
	2205 -> load' f "glGetColorTableParameterfvSGI" ffienumenumPtrfloatIOV
	2206 -> load' f "glGetColorTableParameterivSGI" ffienumenumPtrintIOV
	2207 -> load' f "glGetColorTableSGI" ffienumenumenumPtrVIOV
	2208 -> load' f "glDetailTexFuncSGIS" ffienumsizeiPtrfloatIOV
	2209 -> load' f "glGetDetailTexFuncSGIS" ffienumPtrfloatIOV
	2210 -> load' f "glFogFuncSGIS" ffisizeiPtrfloatIOV
	2211 -> load' f "glGetFogFuncSGIS" ffiPtrfloatIOV
	2212 -> load' f "glSampleMaskSGIS" fficlampfbooleanIOV
	2213 -> load' f "glSamplePatternSGIS" ffienumIOV
	2214 -> load' f "glGetPixelTexGenParameterfvSGIS" ffienumPtrfloatIOV
	2215 -> load' f "glGetPixelTexGenParameterivSGIS" ffienumPtrintIOV
	2216 -> load' f "glPixelTexGenParameterfSGIS" ffienumfloatIOV
	2217 -> load' f "glPixelTexGenParameterfvSGIS" ffienumPtrfloatIOV
	2218 -> load' f "glPixelTexGenParameteriSGIS" ffienumintIOV
	2219 -> load' f "glPixelTexGenParameterivSGIS" ffienumPtrintIOV
	2220 -> load' f "glPointParameterfSGIS" ffienumfloatIOV
	2221 -> load' f "glPointParameterfvSGIS" ffienumPtrfloatIOV
	2222 -> load' f "glGetSharpenTexFuncSGIS" ffienumPtrfloatIOV
	2223 -> load' f "glSharpenTexFuncSGIS" ffienumsizeiPtrfloatIOV
	2224 -> load' f "glTexImage4DSGIS" ffienumintenumsizeisizeisizeisizeiintenumenumPtrVIOV
	2225 -> load' f "glTexSubImage4DSGIS" ffienumintintintintintsizeisizeisizeisizeienumenumPtrVIOV
	2226 -> load' f "glTextureColorMaskSGIS" ffibooleanbooleanbooleanbooleanIOV
	2227 -> load' f "glGetTexFilterFuncSGIS" ffienumenumPtrfloatIOV
	2228 -> load' f "glTexFilterFuncSGIS" ffienumenumsizeiPtrfloatIOV
	2229 -> load' f "glAsyncMarkerSGIX" ffiuintIOV
	2230 -> load' f "glDeleteAsyncMarkersSGIX" ffiuintsizeiIOV
	2231 -> load' f "glFinishAsyncSGIX" ffiPtruintIOint
	2232 -> load' f "glGenAsyncMarkersSGIX" ffisizeiIOuint
	2233 -> load' f "glIsAsyncMarkerSGIX" ffiuintIOboolean
	2234 -> load' f "glPollAsyncSGIX" ffiPtruintIOint
	2235 -> load' f "glFlushRasterSGIX" ffiIOV
	2236 -> load' f "glFragmentColorMaterialSGIX" ffienumenumIOV
	2237 -> load' f "glFragmentLightModelfSGIX" ffienumfloatIOV
	2238 -> load' f "glFragmentLightModelfvSGIX" ffienumPtrfloatIOV
	2239 -> load' f "glFragmentLightModeliSGIX" ffienumintIOV
	2240 -> load' f "glFragmentLightModelivSGIX" ffienumPtrintIOV
	2241 -> load' f "glFragmentLightfSGIX" ffienumenumfloatIOV
	2242 -> load' f "glFragmentLightfvSGIX" ffienumenumPtrfloatIOV
	2243 -> load' f "glFragmentLightiSGIX" ffienumenumintIOV
	2244 -> load' f "glFragmentLightivSGIX" ffienumenumPtrintIOV
	2245 -> load' f "glFragmentMaterialfSGIX" ffienumenumfloatIOV
	2246 -> load' f "glFragmentMaterialfvSGIX" ffienumenumPtrfloatIOV
	2247 -> load' f "glFragmentMaterialiSGIX" ffienumenumintIOV
	2248 -> load' f "glFragmentMaterialivSGIX" ffienumenumPtrintIOV
	2249 -> load' f "glGetFragmentLightfvSGIX" ffienumenumPtrfloatIOV
	2250 -> load' f "glGetFragmentLightivSGIX" ffienumenumPtrintIOV
	2251 -> load' f "glGetFragmentMaterialfvSGIX" ffienumenumPtrfloatIOV
	2252 -> load' f "glGetFragmentMaterialivSGIX" ffienumenumPtrintIOV
	2253 -> load' f "glLightEnviSGIX" ffienumintIOV
	2254 -> load' f "glFrameZoomSGIX" ffiintIOV
	2255 -> load' f "glIglooInterfaceSGIX" ffienumPtrVIOV
	2256 -> load' f "glGetInstrumentsSGIX" ffiIOint
	2257 -> load' f "glInstrumentsBufferSGIX" ffisizeiPtrintIOV
	2258 -> load' f "glPollInstrumentsSGIX" ffiPtrintIOint
	2259 -> load' f "glReadInstrumentsSGIX" ffiintIOV
	2260 -> load' f "glStartInstrumentsSGIX" ffiIOV
	2261 -> load' f "glStopInstrumentsSGIX" ffiintIOV
	2262 -> load' f "glGetListParameterfvSGIX" ffiuintenumPtrfloatIOV
	2263 -> load' f "glGetListParameterivSGIX" ffiuintenumPtrintIOV
	2264 -> load' f "glListParameterfSGIX" ffiuintenumfloatIOV
	2265 -> load' f "glListParameterfvSGIX" ffiuintenumPtrfloatIOV
	2266 -> load' f "glListParameteriSGIX" ffiuintenumintIOV
	2267 -> load' f "glListParameterivSGIX" ffiuintenumPtrintIOV
	2268 -> load' f "glPixelTexGenSGIX" ffienumIOV
	2269 -> load' f "glDeformSGIX" ffibitfieldIOV
	2270 -> load' f "glDeformationMap3dSGIX" ffienumdoubledoubleintintdoubledoubleintintdoubledoubleintintPtrdoubleIOV
	2271 -> load' f "glDeformationMap3fSGIX" ffienumfloatfloatintintfloatfloatintintfloatfloatintintPtrfloatIOV
	2272 -> load' f "glLoadIdentityDeformationMapSGIX" ffibitfieldIOV
	2273 -> load' f "glReferencePlaneSGIX" ffiPtrdoubleIOV
	2274 -> load' f "glSpriteParameterfSGIX" ffienumfloatIOV
	2275 -> load' f "glSpriteParameterfvSGIX" ffienumPtrfloatIOV
	2276 -> load' f "glSpriteParameteriSGIX" ffienumintIOV
	2277 -> load' f "glSpriteParameterivSGIX" ffienumPtrintIOV
	2278 -> load' f "glTagSampleBufferSGIX" ffiIOV
	2279 -> load' f "glGlobalAlphaFactorbSUN" ffibyteIOV
	2280 -> load' f "glGlobalAlphaFactordSUN" ffidoubleIOV
	2281 -> load' f "glGlobalAlphaFactorfSUN" ffifloatIOV
	2282 -> load' f "glGlobalAlphaFactoriSUN" ffiintIOV
	2283 -> load' f "glGlobalAlphaFactorsSUN" ffishortIOV
	2284 -> load' f "glGlobalAlphaFactorubSUN" ffiubyteIOV
	2285 -> load' f "glGlobalAlphaFactoruiSUN" ffiuintIOV
	2286 -> load' f "glGlobalAlphaFactorusSUN" ffiushortIOV
	2287 -> load' f "glDrawMeshArraysSUN" ffienumintsizeisizeiIOV
	2288 -> load' f "glReplacementCodePointerSUN" ffienumsizeiPtrVIOV
	2289 -> load' f "glReplacementCodeubSUN" ffiubyteIOV
	2290 -> load' f "glReplacementCodeubvSUN" ffiPtrubyteIOV
	2291 -> load' f "glReplacementCodeuiSUN" ffiuintIOV
	2292 -> load' f "glReplacementCodeuivSUN" ffiPtruintIOV
	2293 -> load' f "glReplacementCodeusSUN" ffiushortIOV
	2294 -> load' f "glReplacementCodeusvSUN" ffiPtrushortIOV
	2295 -> load' f "glColor3fVertex3fSUN" ffifloatfloatfloatfloatfloatfloatIOV
	2296 -> load' f "glColor3fVertex3fvSUN" ffiPtrfloatPtrfloatIOV
	2297 -> load' f "glColor4fNormal3fVertex3fSUN" ffifloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV
	2298 -> load' f "glColor4fNormal3fVertex3fvSUN" ffiPtrfloatPtrfloatPtrfloatIOV
	2299 -> load' f "glColor4ubVertex2fSUN" ffiubyteubyteubyteubytefloatfloatIOV
	2300 -> load' f "glColor4ubVertex2fvSUN" ffiPtrubytePtrfloatIOV
	2301 -> load' f "glColor4ubVertex3fSUN" ffiubyteubyteubyteubytefloatfloatfloatIOV
	2302 -> load' f "glColor4ubVertex3fvSUN" ffiPtrubytePtrfloatIOV
	2303 -> load' f "glNormal3fVertex3fSUN" ffifloatfloatfloatfloatfloatfloatIOV
	2304 -> load' f "glNormal3fVertex3fvSUN" ffiPtrfloatPtrfloatIOV
	2305 -> load' f "glReplacementCodeuiColor3fVertex3fSUN" ffiuintfloatfloatfloatfloatfloatfloatIOV
	2306 -> load' f "glReplacementCodeuiColor3fVertex3fvSUN" ffiPtruintPtrfloatPtrfloatIOV
	2307 -> load' f "glReplacementCodeuiColor4fNormal3fVertex3fSUN" ffiuintfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV
	2308 -> load' f "glReplacementCodeuiColor4fNormal3fVertex3fvSUN" ffiPtruintPtrfloatPtrfloatPtrfloatIOV
	2309 -> load' f "glReplacementCodeuiColor4ubVertex3fSUN" ffiuintubyteubyteubyteubytefloatfloatfloatIOV
	2310 -> load' f "glReplacementCodeuiColor4ubVertex3fvSUN" ffiPtruintPtrubytePtrfloatIOV
	2311 -> load' f "glReplacementCodeuiNormal3fVertex3fSUN" ffiuintfloatfloatfloatfloatfloatfloatIOV
	2312 -> load' f "glReplacementCodeuiNormal3fVertex3fvSUN" ffiPtruintPtrfloatPtrfloatIOV
	2313 -> load' f "glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN" ffiuintfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV
	2314 -> load' f "glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN" ffiPtruintPtrfloatPtrfloatPtrfloatPtrfloatIOV
	2315 -> load' f "glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN" ffiuintfloatfloatfloatfloatfloatfloatfloatfloatIOV
	2316 -> load' f "glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN" ffiPtruintPtrfloatPtrfloatPtrfloatIOV
	2317 -> load' f "glReplacementCodeuiTexCoord2fVertex3fSUN" ffiuintfloatfloatfloatfloatfloatIOV
	2318 -> load' f "glReplacementCodeuiTexCoord2fVertex3fvSUN" ffiPtruintPtrfloatPtrfloatIOV
	2319 -> load' f "glReplacementCodeuiVertex3fSUN" ffiuintfloatfloatfloatIOV
	2320 -> load' f "glReplacementCodeuiVertex3fvSUN" ffiPtruintPtrfloatIOV
	2321 -> load' f "glTexCoord2fColor3fVertex3fSUN" ffifloatfloatfloatfloatfloatfloatfloatfloatIOV
	2322 -> load' f "glTexCoord2fColor3fVertex3fvSUN" ffiPtrfloatPtrfloatPtrfloatIOV
	2323 -> load' f "glTexCoord2fColor4fNormal3fVertex3fSUN" ffifloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV
	2324 -> load' f "glTexCoord2fColor4fNormal3fVertex3fvSUN" ffiPtrfloatPtrfloatPtrfloatPtrfloatIOV
	2325 -> load' f "glTexCoord2fColor4ubVertex3fSUN" ffifloatfloatubyteubyteubyteubytefloatfloatfloatIOV
	2326 -> load' f "glTexCoord2fColor4ubVertex3fvSUN" ffiPtrfloatPtrubytePtrfloatIOV
	2327 -> load' f "glTexCoord2fNormal3fVertex3fSUN" ffifloatfloatfloatfloatfloatfloatfloatfloatIOV
	2328 -> load' f "glTexCoord2fNormal3fVertex3fvSUN" ffiPtrfloatPtrfloatPtrfloatIOV
	2329 -> load' f "glTexCoord2fVertex3fSUN" ffifloatfloatfloatfloatfloatIOV
	2330 -> load' f "glTexCoord2fVertex3fvSUN" ffiPtrfloatPtrfloatIOV
	2331 -> load' f "glTexCoord4fColor4fNormal3fVertex4fSUN" ffifloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV
	2332 -> load' f "glTexCoord4fColor4fNormal3fVertex4fvSUN" ffiPtrfloatPtrfloatPtrfloatPtrfloatIOV
	2333 -> load' f "glTexCoord4fVertex4fSUN" ffifloatfloatfloatfloatfloatfloatfloatfloatIOV
	2334 -> load' f "glTexCoord4fVertex4fvSUN" ffiPtrfloatPtrfloatIOV
	2335 -> load' f "glFinishTextureSUNX" ffiIOV
	2336 -> load' f "glTbufferMask3DFX" ffiuintIOV
	2337 -> load' f "glAccum" ffienumfloatIOV
	2338 -> load' f "glAlphaFunc" ffienumfloatIOV
	2339 -> load' f "glAreTexturesResident" ffisizeiPtruintPtrbooleanIOboolean
	2340 -> load' f "glArrayElement" ffiintIOV
	2341 -> load' f "glBegin" ffienumIOV
	2342 -> load' f "glBitmap" ffisizeisizeifloatfloatfloatfloatPtrubyteIOV
	2343 -> load' f "glCallList" ffiuintIOV
	2344 -> load' f "glCallLists" ffisizeienumPtrVIOV
	2345 -> load' f "glClearAccum" ffifloatfloatfloatfloatIOV
	2346 -> load' f "glClearIndex" ffifloatIOV
	2347 -> load' f "glClientActiveTexture" ffienumIOV
	2348 -> load' f "glClipPlane" ffienumPtrdoubleIOV
	2349 -> load' f "glColor3b" ffibytebytebyteIOV
	2350 -> load' f "glColor3bv" ffiPtrbyteIOV
	2351 -> load' f "glColor3d" ffidoubledoubledoubleIOV
	2352 -> load' f "glColor3dv" ffiPtrdoubleIOV
	2353 -> load' f "glColor3f" ffifloatfloatfloatIOV
	2354 -> load' f "glColor3fv" ffiPtrfloatIOV
	2355 -> load' f "glColor3i" ffiintintintIOV
	2356 -> load' f "glColor3iv" ffiPtrintIOV
	2357 -> load' f "glColor3s" ffishortshortshortIOV
	2358 -> load' f "glColor3sv" ffiPtrshortIOV
	2359 -> load' f "glColor3ub" ffiubyteubyteubyteIOV
	2360 -> load' f "glColor3ubv" ffiPtrubyteIOV
	2361 -> load' f "glColor3ui" ffiuintuintuintIOV
	2362 -> load' f "glColor3uiv" ffiPtruintIOV
	2363 -> load' f "glColor3us" ffiushortushortushortIOV
	2364 -> load' f "glColor3usv" ffiPtrushortIOV
	2365 -> load' f "glColor4b" ffibytebytebytebyteIOV
	2366 -> load' f "glColor4bv" ffiPtrbyteIOV
	2367 -> load' f "glColor4d" ffidoubledoubledoubledoubleIOV
	2368 -> load' f "glColor4dv" ffiPtrdoubleIOV
	2369 -> load' f "glColor4f" ffifloatfloatfloatfloatIOV
	2370 -> load' f "glColor4fv" ffiPtrfloatIOV
	2371 -> load' f "glColor4i" ffiintintintintIOV
	2372 -> load' f "glColor4iv" ffiPtrintIOV
	2373 -> load' f "glColor4s" ffishortshortshortshortIOV
	2374 -> load' f "glColor4sv" ffiPtrshortIOV
	2375 -> load' f "glColor4ub" ffiubyteubyteubyteubyteIOV
	2376 -> load' f "glColor4ubv" ffiPtrubyteIOV
	2377 -> load' f "glColor4ui" ffiuintuintuintuintIOV
	2378 -> load' f "glColor4uiv" ffiPtruintIOV
	2379 -> load' f "glColor4us" ffiushortushortushortushortIOV
	2380 -> load' f "glColor4usv" ffiPtrushortIOV
	2381 -> load' f "glColorMaterial" ffienumenumIOV
	2382 -> load' f "glColorPointer" ffiintenumsizeiPtrVIOV
	2383 -> load' f "glCopyPixels" ffiintintsizeisizeienumIOV
	2384 -> load' f "glDeleteLists" ffiuintsizeiIOV
	2385 -> load' f "glDisableClientState" ffienumIOV
	2386 -> load' f "glDrawPixels" ffisizeisizeienumenumPtrVIOV
	2387 -> load' f "glEdgeFlag" ffibooleanIOV
	2388 -> load' f "glEdgeFlagPointer" ffisizeiPtrVIOV
	2389 -> load' f "glEdgeFlagv" ffiPtrbooleanIOV
	2390 -> load' f "glEnableClientState" ffienumIOV
	2391 -> load' f "glEnd" ffiIOV
	2392 -> load' f "glEndList" ffiIOV
	2393 -> load' f "glEvalCoord1d" ffidoubleIOV
	2394 -> load' f "glEvalCoord1dv" ffiPtrdoubleIOV
	2395 -> load' f "glEvalCoord1f" ffifloatIOV
	2396 -> load' f "glEvalCoord1fv" ffiPtrfloatIOV
	2397 -> load' f "glEvalCoord2d" ffidoubledoubleIOV
	2398 -> load' f "glEvalCoord2dv" ffiPtrdoubleIOV
	2399 -> load' f "glEvalCoord2f" ffifloatfloatIOV
	2400 -> load' f "glEvalCoord2fv" ffiPtrfloatIOV
	2401 -> load' f "glEvalMesh1" ffienumintintIOV
	2402 -> load' f "glEvalMesh2" ffienumintintintintIOV
	2403 -> load' f "glEvalPoint1" ffiintIOV
	2404 -> load' f "glEvalPoint2" ffiintintIOV
	2405 -> load' f "glFeedbackBuffer" ffisizeienumPtrfloatIOV
	2406 -> load' f "glFogCoordPointer" ffienumsizeiPtrVIOV
	2407 -> load' f "glFogCoordd" ffidoubleIOV
	2408 -> load' f "glFogCoorddv" ffiPtrdoubleIOV
	2409 -> load' f "glFogCoordf" ffifloatIOV
	2410 -> load' f "glFogCoordfv" ffiPtrfloatIOV
	2411 -> load' f "glFogf" ffienumfloatIOV
	2412 -> load' f "glFogfv" ffienumPtrfloatIOV
	2413 -> load' f "glFogi" ffienumintIOV
	2414 -> load' f "glFogiv" ffienumPtrintIOV
	2415 -> load' f "glFrustum" ffidoubledoubledoubledoubledoubledoubleIOV
	2416 -> load' f "glGenLists" ffisizeiIOuint
	2417 -> load' f "glGetClipPlane" ffienumPtrdoubleIOV
	2418 -> load' f "glGetLightfv" ffienumenumPtrfloatIOV
	2419 -> load' f "glGetLightiv" ffienumenumPtrintIOV
	2420 -> load' f "glGetMapdv" ffienumenumPtrdoubleIOV
	2421 -> load' f "glGetMapfv" ffienumenumPtrfloatIOV
	2422 -> load' f "glGetMapiv" ffienumenumPtrintIOV
	2423 -> load' f "glGetMaterialfv" ffienumenumPtrfloatIOV
	2424 -> load' f "glGetMaterialiv" ffienumenumPtrintIOV
	2425 -> load' f "glGetPixelMapfv" ffienumPtrfloatIOV
	2426 -> load' f "glGetPixelMapuiv" ffienumPtruintIOV
	2427 -> load' f "glGetPixelMapusv" ffienumPtrushortIOV
	2428 -> load' f "glGetPolygonStipple" ffiPtrubyteIOV
	2429 -> load' f "glGetTexEnvfv" ffienumenumPtrfloatIOV
	2430 -> load' f "glGetTexEnviv" ffienumenumPtrintIOV
	2431 -> load' f "glGetTexGendv" ffienumenumPtrdoubleIOV
	2432 -> load' f "glGetTexGenfv" ffienumenumPtrfloatIOV
	2433 -> load' f "glGetTexGeniv" ffienumenumPtrintIOV
	2434 -> load' f "glIndexMask" ffiuintIOV
	2435 -> load' f "glIndexPointer" ffienumsizeiPtrVIOV
	2436 -> load' f "glIndexd" ffidoubleIOV
	2437 -> load' f "glIndexdv" ffiPtrdoubleIOV
	2438 -> load' f "glIndexf" ffifloatIOV
	2439 -> load' f "glIndexfv" ffiPtrfloatIOV
	2440 -> load' f "glIndexi" ffiintIOV
	2441 -> load' f "glIndexiv" ffiPtrintIOV
	2442 -> load' f "glIndexs" ffishortIOV
	2443 -> load' f "glIndexsv" ffiPtrshortIOV
	2444 -> load' f "glIndexub" ffiubyteIOV
	2445 -> load' f "glIndexubv" ffiPtrubyteIOV
	2446 -> load' f "glInitNames" ffiIOV
	2447 -> load' f "glInterleavedArrays" ffienumsizeiPtrVIOV
	2448 -> load' f "glIsList" ffiuintIOboolean
	2449 -> load' f "glLightModelf" ffienumfloatIOV
	2450 -> load' f "glLightModelfv" ffienumPtrfloatIOV
	2451 -> load' f "glLightModeli" ffienumintIOV
	2452 -> load' f "glLightModeliv" ffienumPtrintIOV
	2453 -> load' f "glLightf" ffienumenumfloatIOV
	2454 -> load' f "glLightfv" ffienumenumPtrfloatIOV
	2455 -> load' f "glLighti" ffienumenumintIOV
	2456 -> load' f "glLightiv" ffienumenumPtrintIOV
	2457 -> load' f "glLineStipple" ffiintushortIOV
	2458 -> load' f "glListBase" ffiuintIOV
	2459 -> load' f "glLoadIdentity" ffiIOV
	2460 -> load' f "glLoadMatrixd" ffiPtrdoubleIOV
	2461 -> load' f "glLoadMatrixf" ffiPtrfloatIOV
	2462 -> load' f "glLoadName" ffiuintIOV
	2463 -> load' f "glLoadTransposeMatrixd" ffiPtrdoubleIOV
	2464 -> load' f "glLoadTransposeMatrixf" ffiPtrfloatIOV
	2465 -> load' f "glMap1d" ffienumdoubledoubleintintPtrdoubleIOV
	2466 -> load' f "glMap1f" ffienumfloatfloatintintPtrfloatIOV
	2467 -> load' f "glMap2d" ffienumdoubledoubleintintdoubledoubleintintPtrdoubleIOV
	2468 -> load' f "glMap2f" ffienumfloatfloatintintfloatfloatintintPtrfloatIOV
	2469 -> load' f "glMapGrid1d" ffiintdoubledoubleIOV
	2470 -> load' f "glMapGrid1f" ffiintfloatfloatIOV
	2471 -> load' f "glMapGrid2d" ffiintdoubledoubleintdoubledoubleIOV
	2472 -> load' f "glMapGrid2f" ffiintfloatfloatintfloatfloatIOV
	2473 -> load' f "glMaterialf" ffienumenumfloatIOV
	2474 -> load' f "glMaterialfv" ffienumenumPtrfloatIOV
	2475 -> load' f "glMateriali" ffienumenumintIOV
	2476 -> load' f "glMaterialiv" ffienumenumPtrintIOV
	2477 -> load' f "glMatrixMode" ffienumIOV
	2478 -> load' f "glMultMatrixd" ffiPtrdoubleIOV
	2479 -> load' f "glMultMatrixf" ffiPtrfloatIOV
	2480 -> load' f "glMultTransposeMatrixd" ffiPtrdoubleIOV
	2481 -> load' f "glMultTransposeMatrixf" ffiPtrfloatIOV
	2482 -> load' f "glMultiTexCoord1d" ffienumdoubleIOV
	2483 -> load' f "glMultiTexCoord1dv" ffienumPtrdoubleIOV
	2484 -> load' f "glMultiTexCoord1f" ffienumfloatIOV
	2485 -> load' f "glMultiTexCoord1fv" ffienumPtrfloatIOV
	2486 -> load' f "glMultiTexCoord1i" ffienumintIOV
	2487 -> load' f "glMultiTexCoord1iv" ffienumPtrintIOV
	2488 -> load' f "glMultiTexCoord1s" ffienumshortIOV
	2489 -> load' f "glMultiTexCoord1sv" ffienumPtrshortIOV
	2490 -> load' f "glMultiTexCoord2d" ffienumdoubledoubleIOV
	2491 -> load' f "glMultiTexCoord2dv" ffienumPtrdoubleIOV
	2492 -> load' f "glMultiTexCoord2f" ffienumfloatfloatIOV
	2493 -> load' f "glMultiTexCoord2fv" ffienumPtrfloatIOV
	2494 -> load' f "glMultiTexCoord2i" ffienumintintIOV
	2495 -> load' f "glMultiTexCoord2iv" ffienumPtrintIOV
	2496 -> load' f "glMultiTexCoord2s" ffienumshortshortIOV
	2497 -> load' f "glMultiTexCoord2sv" ffienumPtrshortIOV
	2498 -> load' f "glMultiTexCoord3d" ffienumdoubledoubledoubleIOV
	2499 -> load' f "glMultiTexCoord3dv" ffienumPtrdoubleIOV
	2500 -> load' f "glMultiTexCoord3f" ffienumfloatfloatfloatIOV
	2501 -> load' f "glMultiTexCoord3fv" ffienumPtrfloatIOV
	2502 -> load' f "glMultiTexCoord3i" ffienumintintintIOV
	2503 -> load' f "glMultiTexCoord3iv" ffienumPtrintIOV
	2504 -> load' f "glMultiTexCoord3s" ffienumshortshortshortIOV
	2505 -> load' f "glMultiTexCoord3sv" ffienumPtrshortIOV
	2506 -> load' f "glMultiTexCoord4d" ffienumdoubledoubledoubledoubleIOV
	2507 -> load' f "glMultiTexCoord4dv" ffienumPtrdoubleIOV
	2508 -> load' f "glMultiTexCoord4f" ffienumfloatfloatfloatfloatIOV
	2509 -> load' f "glMultiTexCoord4fv" ffienumPtrfloatIOV
	2510 -> load' f "glMultiTexCoord4i" ffienumintintintintIOV
	2511 -> load' f "glMultiTexCoord4iv" ffienumPtrintIOV
	2512 -> load' f "glMultiTexCoord4s" ffienumshortshortshortshortIOV
	2513 -> load' f "glMultiTexCoord4sv" ffienumPtrshortIOV
	2514 -> load' f "glNewList" ffiuintenumIOV
	2515 -> load' f "glNormal3b" ffibytebytebyteIOV
	2516 -> load' f "glNormal3bv" ffiPtrbyteIOV
	2517 -> load' f "glNormal3d" ffidoubledoubledoubleIOV
	2518 -> load' f "glNormal3dv" ffiPtrdoubleIOV
	2519 -> load' f "glNormal3f" ffifloatfloatfloatIOV
	2520 -> load' f "glNormal3fv" ffiPtrfloatIOV
	2521 -> load' f "glNormal3i" ffiintintintIOV
	2522 -> load' f "glNormal3iv" ffiPtrintIOV
	2523 -> load' f "glNormal3s" ffishortshortshortIOV
	2524 -> load' f "glNormal3sv" ffiPtrshortIOV
	2525 -> load' f "glNormalPointer" ffienumsizeiPtrVIOV
	2526 -> load' f "glOrtho" ffidoubledoubledoubledoubledoubledoubleIOV
	2527 -> load' f "glPassThrough" ffifloatIOV
	2528 -> load' f "glPixelMapfv" ffienumsizeiPtrfloatIOV
	2529 -> load' f "glPixelMapuiv" ffienumsizeiPtruintIOV
	2530 -> load' f "glPixelMapusv" ffienumsizeiPtrushortIOV
	2531 -> load' f "glPixelTransferf" ffienumfloatIOV
	2532 -> load' f "glPixelTransferi" ffienumintIOV
	2533 -> load' f "glPixelZoom" ffifloatfloatIOV
	2534 -> load' f "glPolygonStipple" ffiPtrubyteIOV
	2535 -> load' f "glPopAttrib" ffiIOV
	2536 -> load' f "glPopClientAttrib" ffiIOV
	2537 -> load' f "glPopMatrix" ffiIOV
	2538 -> load' f "glPopName" ffiIOV
	2539 -> load' f "glPrioritizeTextures" ffisizeiPtruintPtrfloatIOV
	2540 -> load' f "glPushAttrib" ffibitfieldIOV
	2541 -> load' f "glPushClientAttrib" ffibitfieldIOV
	2542 -> load' f "glPushMatrix" ffiIOV
	2543 -> load' f "glPushName" ffiuintIOV
	2544 -> load' f "glRasterPos2d" ffidoubledoubleIOV
	2545 -> load' f "glRasterPos2dv" ffiPtrdoubleIOV
	2546 -> load' f "glRasterPos2f" ffifloatfloatIOV
	2547 -> load' f "glRasterPos2fv" ffiPtrfloatIOV
	2548 -> load' f "glRasterPos2i" ffiintintIOV
	2549 -> load' f "glRasterPos2iv" ffiPtrintIOV
	2550 -> load' f "glRasterPos2s" ffishortshortIOV
	2551 -> load' f "glRasterPos2sv" ffiPtrshortIOV
	2552 -> load' f "glRasterPos3d" ffidoubledoubledoubleIOV
	2553 -> load' f "glRasterPos3dv" ffiPtrdoubleIOV
	2554 -> load' f "glRasterPos3f" ffifloatfloatfloatIOV
	2555 -> load' f "glRasterPos3fv" ffiPtrfloatIOV
	2556 -> load' f "glRasterPos3i" ffiintintintIOV
	2557 -> load' f "glRasterPos3iv" ffiPtrintIOV
	2558 -> load' f "glRasterPos3s" ffishortshortshortIOV
	2559 -> load' f "glRasterPos3sv" ffiPtrshortIOV
	2560 -> load' f "glRasterPos4d" ffidoubledoubledoubledoubleIOV
	2561 -> load' f "glRasterPos4dv" ffiPtrdoubleIOV
	2562 -> load' f "glRasterPos4f" ffifloatfloatfloatfloatIOV
	2563 -> load' f "glRasterPos4fv" ffiPtrfloatIOV
	2564 -> load' f "glRasterPos4i" ffiintintintintIOV
	2565 -> load' f "glRasterPos4iv" ffiPtrintIOV
	2566 -> load' f "glRasterPos4s" ffishortshortshortshortIOV
	2567 -> load' f "glRasterPos4sv" ffiPtrshortIOV
	2568 -> load' f "glRectd" ffidoubledoubledoubledoubleIOV
	2569 -> load' f "glRectdv" ffiPtrdoublePtrdoubleIOV
	2570 -> load' f "glRectf" ffifloatfloatfloatfloatIOV
	2571 -> load' f "glRectfv" ffiPtrfloatPtrfloatIOV
	2572 -> load' f "glRecti" ffiintintintintIOV
	2573 -> load' f "glRectiv" ffiPtrintPtrintIOV
	2574 -> load' f "glRects" ffishortshortshortshortIOV
	2575 -> load' f "glRectsv" ffiPtrshortPtrshortIOV
	2576 -> load' f "glRenderMode" ffienumIOint
	2577 -> load' f "glRotated" ffidoubledoubledoubledoubleIOV
	2578 -> load' f "glRotatef" ffifloatfloatfloatfloatIOV
	2579 -> load' f "glScaled" ffidoubledoubledoubleIOV
	2580 -> load' f "glScalef" ffifloatfloatfloatIOV
	2581 -> load' f "glSecondaryColor3b" ffibytebytebyteIOV
	2582 -> load' f "glSecondaryColor3bv" ffiPtrbyteIOV
	2583 -> load' f "glSecondaryColor3d" ffidoubledoubledoubleIOV
	2584 -> load' f "glSecondaryColor3dv" ffiPtrdoubleIOV
	2585 -> load' f "glSecondaryColor3f" ffifloatfloatfloatIOV
	2586 -> load' f "glSecondaryColor3fv" ffiPtrfloatIOV
	2587 -> load' f "glSecondaryColor3i" ffiintintintIOV
	2588 -> load' f "glSecondaryColor3iv" ffiPtrintIOV
	2589 -> load' f "glSecondaryColor3s" ffishortshortshortIOV
	2590 -> load' f "glSecondaryColor3sv" ffiPtrshortIOV
	2591 -> load' f "glSecondaryColor3ub" ffiubyteubyteubyteIOV
	2592 -> load' f "glSecondaryColor3ubv" ffiPtrubyteIOV
	2593 -> load' f "glSecondaryColor3ui" ffiuintuintuintIOV
	2594 -> load' f "glSecondaryColor3uiv" ffiPtruintIOV
	2595 -> load' f "glSecondaryColor3us" ffiushortushortushortIOV
	2596 -> load' f "glSecondaryColor3usv" ffiPtrushortIOV
	2597 -> load' f "glSecondaryColorPointer" ffiintenumsizeiPtrVIOV
	2598 -> load' f "glSelectBuffer" ffisizeiPtruintIOV
	2599 -> load' f "glShadeModel" ffienumIOV
	2600 -> load' f "glTexCoord1d" ffidoubleIOV
	2601 -> load' f "glTexCoord1dv" ffiPtrdoubleIOV
	2602 -> load' f "glTexCoord1f" ffifloatIOV
	2603 -> load' f "glTexCoord1fv" ffiPtrfloatIOV
	2604 -> load' f "glTexCoord1i" ffiintIOV
	2605 -> load' f "glTexCoord1iv" ffiPtrintIOV
	2606 -> load' f "glTexCoord1s" ffishortIOV
	2607 -> load' f "glTexCoord1sv" ffiPtrshortIOV
	2608 -> load' f "glTexCoord2d" ffidoubledoubleIOV
	2609 -> load' f "glTexCoord2dv" ffiPtrdoubleIOV
	2610 -> load' f "glTexCoord2f" ffifloatfloatIOV
	2611 -> load' f "glTexCoord2fv" ffiPtrfloatIOV
	2612 -> load' f "glTexCoord2i" ffiintintIOV
	2613 -> load' f "glTexCoord2iv" ffiPtrintIOV
	2614 -> load' f "glTexCoord2s" ffishortshortIOV
	2615 -> load' f "glTexCoord2sv" ffiPtrshortIOV
	2616 -> load' f "glTexCoord3d" ffidoubledoubledoubleIOV
	2617 -> load' f "glTexCoord3dv" ffiPtrdoubleIOV
	2618 -> load' f "glTexCoord3f" ffifloatfloatfloatIOV
	2619 -> load' f "glTexCoord3fv" ffiPtrfloatIOV
	2620 -> load' f "glTexCoord3i" ffiintintintIOV
	2621 -> load' f "glTexCoord3iv" ffiPtrintIOV
	2622 -> load' f "glTexCoord3s" ffishortshortshortIOV
	2623 -> load' f "glTexCoord3sv" ffiPtrshortIOV
	2624 -> load' f "glTexCoord4d" ffidoubledoubledoubledoubleIOV
	2625 -> load' f "glTexCoord4dv" ffiPtrdoubleIOV
	2626 -> load' f "glTexCoord4f" ffifloatfloatfloatfloatIOV
	2627 -> load' f "glTexCoord4fv" ffiPtrfloatIOV
	2628 -> load' f "glTexCoord4i" ffiintintintintIOV
	2629 -> load' f "glTexCoord4iv" ffiPtrintIOV
	2630 -> load' f "glTexCoord4s" ffishortshortshortshortIOV
	2631 -> load' f "glTexCoord4sv" ffiPtrshortIOV
	2632 -> load' f "glTexCoordPointer" ffiintenumsizeiPtrVIOV
	2633 -> load' f "glTexEnvf" ffienumenumfloatIOV
	2634 -> load' f "glTexEnvfv" ffienumenumPtrfloatIOV
	2635 -> load' f "glTexEnvi" ffienumenumintIOV
	2636 -> load' f "glTexEnviv" ffienumenumPtrintIOV
	2637 -> load' f "glTexGend" ffienumenumdoubleIOV
	2638 -> load' f "glTexGendv" ffienumenumPtrdoubleIOV
	2639 -> load' f "glTexGenf" ffienumenumfloatIOV
	2640 -> load' f "glTexGenfv" ffienumenumPtrfloatIOV
	2641 -> load' f "glTexGeni" ffienumenumintIOV
	2642 -> load' f "glTexGeniv" ffienumenumPtrintIOV
	2643 -> load' f "glTranslated" ffidoubledoubledoubleIOV
	2644 -> load' f "glTranslatef" ffifloatfloatfloatIOV
	2645 -> load' f "glVertex2d" ffidoubledoubleIOV
	2646 -> load' f "glVertex2dv" ffiPtrdoubleIOV
	2647 -> load' f "glVertex2f" ffifloatfloatIOV
	2648 -> load' f "glVertex2fv" ffiPtrfloatIOV
	2649 -> load' f "glVertex2i" ffiintintIOV
	2650 -> load' f "glVertex2iv" ffiPtrintIOV
	2651 -> load' f "glVertex2s" ffishortshortIOV
	2652 -> load' f "glVertex2sv" ffiPtrshortIOV
	2653 -> load' f "glVertex3d" ffidoubledoubledoubleIOV
	2654 -> load' f "glVertex3dv" ffiPtrdoubleIOV
	2655 -> load' f "glVertex3f" ffifloatfloatfloatIOV
	2656 -> load' f "glVertex3fv" ffiPtrfloatIOV
	2657 -> load' f "glVertex3i" ffiintintintIOV
	2658 -> load' f "glVertex3iv" ffiPtrintIOV
	2659 -> load' f "glVertex3s" ffishortshortshortIOV
	2660 -> load' f "glVertex3sv" ffiPtrshortIOV
	2661 -> load' f "glVertex4d" ffidoubledoubledoubledoubleIOV
	2662 -> load' f "glVertex4dv" ffiPtrdoubleIOV
	2663 -> load' f "glVertex4f" ffifloatfloatfloatfloatIOV
	2664 -> load' f "glVertex4fv" ffiPtrfloatIOV
	2665 -> load' f "glVertex4i" ffiintintintintIOV
	2666 -> load' f "glVertex4iv" ffiPtrintIOV
	2667 -> load' f "glVertex4s" ffishortshortshortshortIOV
	2668 -> load' f "glVertex4sv" ffiPtrshortIOV
	2669 -> load' f "glVertexPointer" ffiintenumsizeiPtrVIOV
	2670 -> load' f "glWindowPos2d" ffidoubledoubleIOV
	2671 -> load' f "glWindowPos2dv" ffiPtrdoubleIOV
	2672 -> load' f "glWindowPos2f" ffifloatfloatIOV
	2673 -> load' f "glWindowPos2fv" ffiPtrfloatIOV
	2674 -> load' f "glWindowPos2i" ffiintintIOV
	2675 -> load' f "glWindowPos2iv" ffiPtrintIOV
	2676 -> load' f "glWindowPos2s" ffishortshortIOV
	2677 -> load' f "glWindowPos2sv" ffiPtrshortIOV
	2678 -> load' f "glWindowPos3d" ffidoubledoubledoubleIOV
	2679 -> load' f "glWindowPos3dv" ffiPtrdoubleIOV
	2680 -> load' f "glWindowPos3f" ffifloatfloatfloatIOV
	2681 -> load' f "glWindowPos3fv" ffiPtrfloatIOV
	2682 -> load' f "glWindowPos3i" ffiintintintIOV
	2683 -> load' f "glWindowPos3iv" ffiPtrintIOV
	2684 -> load' f "glWindowPos3s" ffishortshortshortIOV
	2685 -> load' f "glWindowPos3sv" ffiPtrshortIOV
	2686 -> load' f "glGetnColorTable" ffienumenumenumsizeiPtrVIOV
	2687 -> load' f "glGetnConvolutionFilter" ffienumenumenumsizeiPtrVIOV
	2688 -> load' f "glGetnHistogram" ffienumbooleanenumenumsizeiPtrVIOV
	2689 -> load' f "glGetnMapdv" ffienumenumsizeiPtrdoubleIOV
	2690 -> load' f "glGetnMapfv" ffienumenumsizeiPtrfloatIOV
	2691 -> load' f "glGetnMapiv" ffienumenumsizeiPtrintIOV
	2692 -> load' f "glGetnMinmax" ffienumbooleanenumenumsizeiPtrVIOV
	2693 -> load' f "glGetnPixelMapfv" ffienumsizeiPtrfloatIOV
	2694 -> load' f "glGetnPixelMapuiv" ffienumsizeiPtruintIOV
	2695 -> load' f "glGetnPixelMapusv" ffienumsizeiPtrushortIOV
	2696 -> load' f "glGetnPolygonStipple" ffisizeiPtrubyteIOV
	2697 -> load' f "glGetnSeparableFilter" ffienumenumenumsizeiPtrVsizeiPtrVPtrVIOV
	2698 -> load' f "glActiveTexture" ffienumIOV
	2699 -> load' f "glAttachShader" ffiuintuintIOV
	2700 -> load' f "glBeginConditionalRender" ffiuintenumIOV
	2701 -> load' f "glBeginQuery" ffienumuintIOV
	2702 -> load' f "glBeginTransformFeedback" ffienumIOV
	2703 -> load' f "glBindAttribLocation" ffiuintuintPtrcharIOV
	2704 -> load' f "glBindBuffer" ffienumuintIOV
	2705 -> load' f "glBindBufferBase" ffienumuintuintIOV
	2706 -> load' f "glBindBufferRange" ffienumuintuintintptrsizeiptrIOV
	2707 -> load' f "glBindFragDataLocation" ffiuintuintPtrcharIOV
	2708 -> load' f "glBindTexture" ffienumuintIOV
	2709 -> load' f "glBlendEquationSeparate" ffienumenumIOV
	2710 -> load' f "glBlendFunc" ffienumenumIOV
	2711 -> load' f "glBlendFuncSeparate" ffienumenumenumenumIOV
	2712 -> load' f "glBufferData" ffienumsizeiptrPtrVenumIOV
	2713 -> load' f "glBufferSubData" ffienumintptrsizeiptrPtrVIOV
	2714 -> load' f "glClampColor" ffienumenumIOV
	2715 -> load' f "glClear" ffibitfieldIOV
	2716 -> load' f "glClearBufferfi" ffienumintfloatintIOV
	2717 -> load' f "glClearBufferfv" ffienumintPtrfloatIOV
	2718 -> load' f "glClearBufferiv" ffienumintPtrintIOV
	2719 -> load' f "glClearBufferuiv" ffienumintPtruintIOV
	2720 -> load' f "glClearColor" ffifloatfloatfloatfloatIOV
	2721 -> load' f "glClearDepth" ffidoubleIOV
	2722 -> load' f "glClearStencil" ffiintIOV
	2723 -> load' f "glColorMask" ffibooleanbooleanbooleanbooleanIOV
	2724 -> load' f "glColorMaski" ffiuintbooleanbooleanbooleanbooleanIOV
	2725 -> load' f "glCompileShader" ffiuintIOV
	2726 -> load' f "glCompressedTexImage1D" ffienumintenumsizeiintsizeiPtrVIOV
	2727 -> load' f "glCompressedTexImage2D" ffienumintenumsizeisizeiintsizeiPtrVIOV
	2728 -> load' f "glCompressedTexImage3D" ffienumintenumsizeisizeisizeiintsizeiPtrVIOV
	2729 -> load' f "glCompressedTexSubImage1D" ffienumintintsizeienumsizeiPtrVIOV
	2730 -> load' f "glCompressedTexSubImage2D" ffienumintintintsizeisizeienumsizeiPtrVIOV
	2731 -> load' f "glCompressedTexSubImage3D" ffienumintintintintsizeisizeisizeienumsizeiPtrVIOV
	2732 -> load' f "glCopyTexImage1D" ffienumintenumintintsizeiintIOV
	2733 -> load' f "glCopyTexImage2D" ffienumintenumintintsizeisizeiintIOV
	2734 -> load' f "glCopyTexSubImage1D" ffienumintintintintsizeiIOV
	2735 -> load' f "glCopyTexSubImage2D" ffienumintintintintintsizeisizeiIOV
	2736 -> load' f "glCopyTexSubImage3D" ffienumintintintintintintsizeisizeiIOV
	2737 -> load' f "glCreateProgram" ffiIOuint
	2738 -> load' f "glCreateShader" ffienumIOuint
	2739 -> load' f "glCullFace" ffienumIOV
	2740 -> load' f "glDeleteBuffers" ffisizeiPtruintIOV
	2741 -> load' f "glDeleteProgram" ffiuintIOV
	2742 -> load' f "glDeleteQueries" ffisizeiPtruintIOV
	2743 -> load' f "glDeleteShader" ffiuintIOV
	2744 -> load' f "glDeleteTextures" ffisizeiPtruintIOV
	2745 -> load' f "glDepthFunc" ffienumIOV
	2746 -> load' f "glDepthMask" ffibooleanIOV
	2747 -> load' f "glDepthRange" ffidoubledoubleIOV
	2748 -> load' f "glDetachShader" ffiuintuintIOV
	2749 -> load' f "glDisable" ffienumIOV
	2750 -> load' f "glDisableVertexAttribArray" ffiuintIOV
	2751 -> load' f "glDisablei" ffienumuintIOV
	2752 -> load' f "glDrawArrays" ffienumintsizeiIOV
	2753 -> load' f "glDrawArraysInstanced" ffienumintsizeisizeiIOV
	2754 -> load' f "glDrawBuffer" ffienumIOV
	2755 -> load' f "glDrawBuffers" ffisizeiPtrenumIOV
	2756 -> load' f "glDrawElements" ffienumsizeienumPtrVIOV
	2757 -> load' f "glDrawElementsInstanced" ffienumsizeienumPtrVsizeiIOV
	2758 -> load' f "glDrawRangeElements" ffienumuintuintsizeienumPtrVIOV
	2759 -> load' f "glEnable" ffienumIOV
	2760 -> load' f "glEnableVertexAttribArray" ffiuintIOV
	2761 -> load' f "glEnablei" ffienumuintIOV
	2762 -> load' f "glEndConditionalRender" ffiIOV
	2763 -> load' f "glEndQuery" ffienumIOV
	2764 -> load' f "glEndTransformFeedback" ffiIOV
	2765 -> load' f "glFinish" ffiIOV
	2766 -> load' f "glFlush" ffiIOV
	2767 -> load' f "glFramebufferTexture" ffienumenumuintintIOV
	2768 -> load' f "glFrontFace" ffienumIOV
	2769 -> load' f "glGenBuffers" ffisizeiPtruintIOV
	2770 -> load' f "glGenQueries" ffisizeiPtruintIOV
	2771 -> load' f "glGenTextures" ffisizeiPtruintIOV
	2772 -> load' f "glGetActiveAttrib" ffiuintuintsizeiPtrsizeiPtrintPtrenumPtrcharIOV
	2773 -> load' f "glGetActiveUniform" ffiuintuintsizeiPtrsizeiPtrintPtrenumPtrcharIOV
	2774 -> load' f "glGetAttachedShaders" ffiuintsizeiPtrsizeiPtruintIOV
	2775 -> load' f "glGetAttribLocation" ffiuintPtrcharIOint
	2776 -> load' f "glGetBooleani_v" ffienumuintPtrbooleanIOV
	2777 -> load' f "glGetBooleanv" ffienumPtrbooleanIOV
	2778 -> load' f "glGetBufferParameteri64v" ffienumenumPtrint64IOV
	2779 -> load' f "glGetBufferParameteriv" ffienumenumPtrintIOV
	2780 -> load' f "glGetBufferPointerv" ffienumenumPtrVIOV
	2781 -> load' f "glGetBufferSubData" ffienumintptrsizeiptrPtrVIOV
	2782 -> load' f "glGetCompressedTexImage" ffienumintPtrVIOV
	2783 -> load' f "glGetDoublev" ffienumPtrdoubleIOV
	2784 -> load' f "glGetError" ffiIOenum
	2785 -> load' f "glGetFloatv" ffienumPtrfloatIOV
	2786 -> load' f "glGetFragDataLocation" ffiuintPtrcharIOint
	2787 -> load' f "glGetInteger64i_v" ffienumuintPtrint64IOV
	2788 -> load' f "glGetIntegeri_v" ffienumuintPtrintIOV
	2789 -> load' f "glGetIntegerv" ffienumPtrintIOV
	2790 -> load' f "glGetProgramInfoLog" ffiuintsizeiPtrsizeiPtrcharIOV
	2791 -> load' f "glGetProgramiv" ffiuintenumPtrintIOV
	2792 -> load' f "glGetQueryObjectiv" ffiuintenumPtrintIOV
	2793 -> load' f "glGetQueryObjectuiv" ffiuintenumPtruintIOV
	2794 -> load' f "glGetQueryiv" ffienumenumPtrintIOV
	2795 -> load' f "glGetShaderInfoLog" ffiuintsizeiPtrsizeiPtrcharIOV
	2796 -> load' f "glGetShaderSource" ffiuintsizeiPtrsizeiPtrcharIOV
	2797 -> load' f "glGetShaderiv" ffiuintenumPtrintIOV
	2798 -> load' f "glGetString" ffienumIOPtrubyte
	2799 -> load' f "glGetStringi" ffienumuintIOPtrubyte
	2800 -> load' f "glGetTexImage" ffienumintenumenumPtrVIOV
	2801 -> load' f "glGetTexLevelParameterfv" ffienumintenumPtrfloatIOV
	2802 -> load' f "glGetTexLevelParameteriv" ffienumintenumPtrintIOV
	2803 -> load' f "glGetTexParameterIiv" ffienumenumPtrintIOV
	2804 -> load' f "glGetTexParameterIuiv" ffienumenumPtruintIOV
	2805 -> load' f "glGetTexParameterfv" ffienumenumPtrfloatIOV
	2806 -> load' f "glGetTexParameteriv" ffienumenumPtrintIOV
	2807 -> load' f "glGetTransformFeedbackVarying" ffiuintuintsizeiPtrsizeiPtrsizeiPtrenumPtrcharIOV
	2808 -> load' f "glGetUniformLocation" ffiuintPtrcharIOint
	2809 -> load' f "glGetUniformfv" ffiuintintPtrfloatIOV
	2810 -> load' f "glGetUniformiv" ffiuintintPtrintIOV
	2811 -> load' f "glGetUniformuiv" ffiuintintPtruintIOV
	2812 -> load' f "glGetVertexAttribIiv" ffiuintenumPtrintIOV
	2813 -> load' f "glGetVertexAttribIuiv" ffiuintenumPtruintIOV
	2814 -> load' f "glGetVertexAttribPointerv" ffiuintenumPtrVIOV
	2815 -> load' f "glGetVertexAttribdv" ffiuintenumPtrdoubleIOV
	2816 -> load' f "glGetVertexAttribfv" ffiuintenumPtrfloatIOV
	2817 -> load' f "glGetVertexAttribiv" ffiuintenumPtrintIOV
	2818 -> load' f "glHint" ffienumenumIOV
	2819 -> load' f "glIsBuffer" ffiuintIOboolean
	2820 -> load' f "glIsEnabled" ffienumIOboolean
	2821 -> load' f "glIsEnabledi" ffienumuintIOboolean
	2822 -> load' f "glIsProgram" ffiuintIOboolean
	2823 -> load' f "glIsQuery" ffiuintIOboolean
	2824 -> load' f "glIsShader" ffiuintIOboolean
	2825 -> load' f "glIsTexture" ffiuintIOboolean
	2826 -> load' f "glLineWidth" ffifloatIOV
	2827 -> load' f "glLinkProgram" ffiuintIOV
	2828 -> load' f "glLogicOp" ffienumIOV
	2829 -> load' f "glMapBuffer" ffienumenumIOPtrV
	2830 -> load' f "glMultiDrawArrays" ffienumPtrintPtrsizeisizeiIOV
	2831 -> load' f "glMultiDrawElements" ffienumPtrsizeienumPtrVsizeiIOV
	2832 -> load' f "glPixelStoref" ffienumfloatIOV
	2833 -> load' f "glPixelStorei" ffienumintIOV
	2834 -> load' f "glPointParameterf" ffienumfloatIOV
	2835 -> load' f "glPointParameterfv" ffienumPtrfloatIOV
	2836 -> load' f "glPointParameteri" ffienumintIOV
	2837 -> load' f "glPointParameteriv" ffienumPtrintIOV
	2838 -> load' f "glPointSize" ffifloatIOV
	2839 -> load' f "glPolygonMode" ffienumenumIOV
	2840 -> load' f "glPolygonOffset" ffifloatfloatIOV
	2841 -> load' f "glPrimitiveRestartIndex" ffiuintIOV
	2842 -> load' f "glReadBuffer" ffienumIOV
	2843 -> load' f "glReadPixels" ffiintintsizeisizeienumenumPtrVIOV
	2844 -> load' f "glSampleCoverage" ffifloatbooleanIOV
	2845 -> load' f "glScissor" ffiintintsizeisizeiIOV
	2846 -> load' f "glShaderSource" ffiuintsizeiPtrcharPtrintIOV
	2847 -> load' f "glStencilFunc" ffienumintuintIOV
	2848 -> load' f "glStencilFuncSeparate" ffienumenumintuintIOV
	2849 -> load' f "glStencilMask" ffiuintIOV
	2850 -> load' f "glStencilMaskSeparate" ffienumuintIOV
	2851 -> load' f "glStencilOp" ffienumenumenumIOV
	2852 -> load' f "glStencilOpSeparate" ffienumenumenumenumIOV
	2853 -> load' f "glTexBuffer" ffienumenumuintIOV
	2854 -> load' f "glTexImage1D" ffienumintintsizeiintenumenumPtrVIOV
	2855 -> load' f "glTexImage2D" ffienumintintsizeisizeiintenumenumPtrVIOV
	2856 -> load' f "glTexImage3D" ffienumintintsizeisizeisizeiintenumenumPtrVIOV
	2857 -> load' f "glTexParameterIiv" ffienumenumPtrintIOV
	2858 -> load' f "glTexParameterIuiv" ffienumenumPtruintIOV
	2859 -> load' f "glTexParameterf" ffienumenumfloatIOV
	2860 -> load' f "glTexParameterfv" ffienumenumPtrfloatIOV
	2861 -> load' f "glTexParameteri" ffienumenumintIOV
	2862 -> load' f "glTexParameteriv" ffienumenumPtrintIOV
	2863 -> load' f "glTexSubImage1D" ffienumintintsizeienumenumPtrVIOV
	2864 -> load' f "glTexSubImage2D" ffienumintintintsizeisizeienumenumPtrVIOV
	2865 -> load' f "glTexSubImage3D" ffienumintintintintsizeisizeisizeienumenumPtrVIOV
	2866 -> load' f "glTransformFeedbackVaryings" ffiuintsizeiPtrcharenumIOV
	2867 -> load' f "glUniform1f" ffiintfloatIOV
	2868 -> load' f "glUniform1fv" ffiintsizeiPtrfloatIOV
	2869 -> load' f "glUniform1i" ffiintintIOV
	2870 -> load' f "glUniform1iv" ffiintsizeiPtrintIOV
	2871 -> load' f "glUniform1ui" ffiintuintIOV
	2872 -> load' f "glUniform1uiv" ffiintsizeiPtruintIOV
	2873 -> load' f "glUniform2f" ffiintfloatfloatIOV
	2874 -> load' f "glUniform2fv" ffiintsizeiPtrfloatIOV
	2875 -> load' f "glUniform2i" ffiintintintIOV
	2876 -> load' f "glUniform2iv" ffiintsizeiPtrintIOV
	2877 -> load' f "glUniform2ui" ffiintuintuintIOV
	2878 -> load' f "glUniform2uiv" ffiintsizeiPtruintIOV
	2879 -> load' f "glUniform3f" ffiintfloatfloatfloatIOV
	2880 -> load' f "glUniform3fv" ffiintsizeiPtrfloatIOV
	2881 -> load' f "glUniform3i" ffiintintintintIOV
	2882 -> load' f "glUniform3iv" ffiintsizeiPtrintIOV
	2883 -> load' f "glUniform3ui" ffiintuintuintuintIOV
	2884 -> load' f "glUniform3uiv" ffiintsizeiPtruintIOV
	2885 -> load' f "glUniform4f" ffiintfloatfloatfloatfloatIOV
	2886 -> load' f "glUniform4fv" ffiintsizeiPtrfloatIOV
	2887 -> load' f "glUniform4i" ffiintintintintintIOV
	2888 -> load' f "glUniform4iv" ffiintsizeiPtrintIOV
	2889 -> load' f "glUniform4ui" ffiintuintuintuintuintIOV
	2890 -> load' f "glUniform4uiv" ffiintsizeiPtruintIOV
	2891 -> load' f "glUniformMatrix2fv" ffiintsizeibooleanPtrfloatIOV
	2892 -> load' f "glUniformMatrix2x3fv" ffiintsizeibooleanPtrfloatIOV
	2893 -> load' f "glUniformMatrix2x4fv" ffiintsizeibooleanPtrfloatIOV
	2894 -> load' f "glUniformMatrix3fv" ffiintsizeibooleanPtrfloatIOV
	2895 -> load' f "glUniformMatrix3x2fv" ffiintsizeibooleanPtrfloatIOV
	2896 -> load' f "glUniformMatrix3x4fv" ffiintsizeibooleanPtrfloatIOV
	2897 -> load' f "glUniformMatrix4fv" ffiintsizeibooleanPtrfloatIOV
	2898 -> load' f "glUniformMatrix4x2fv" ffiintsizeibooleanPtrfloatIOV
	2899 -> load' f "glUniformMatrix4x3fv" ffiintsizeibooleanPtrfloatIOV
	2900 -> load' f "glUnmapBuffer" ffienumIOboolean
	2901 -> load' f "glUseProgram" ffiuintIOV
	2902 -> load' f "glValidateProgram" ffiuintIOV
	2903 -> load' f "glVertexAttrib1d" ffiuintdoubleIOV
	2904 -> load' f "glVertexAttrib1dv" ffiuintPtrdoubleIOV
	2905 -> load' f "glVertexAttrib1f" ffiuintfloatIOV
	2906 -> load' f "glVertexAttrib1fv" ffiuintPtrfloatIOV
	2907 -> load' f "glVertexAttrib1s" ffiuintshortIOV
	2908 -> load' f "glVertexAttrib1sv" ffiuintPtrshortIOV
	2909 -> load' f "glVertexAttrib2d" ffiuintdoubledoubleIOV
	2910 -> load' f "glVertexAttrib2dv" ffiuintPtrdoubleIOV
	2911 -> load' f "glVertexAttrib2f" ffiuintfloatfloatIOV
	2912 -> load' f "glVertexAttrib2fv" ffiuintPtrfloatIOV
	2913 -> load' f "glVertexAttrib2s" ffiuintshortshortIOV
	2914 -> load' f "glVertexAttrib2sv" ffiuintPtrshortIOV
	2915 -> load' f "glVertexAttrib3d" ffiuintdoubledoubledoubleIOV
	2916 -> load' f "glVertexAttrib3dv" ffiuintPtrdoubleIOV
	2917 -> load' f "glVertexAttrib3f" ffiuintfloatfloatfloatIOV
	2918 -> load' f "glVertexAttrib3fv" ffiuintPtrfloatIOV
	2919 -> load' f "glVertexAttrib3s" ffiuintshortshortshortIOV
	2920 -> load' f "glVertexAttrib3sv" ffiuintPtrshortIOV
	2921 -> load' f "glVertexAttrib4Nbv" ffiuintPtrbyteIOV
	2922 -> load' f "glVertexAttrib4Niv" ffiuintPtrintIOV
	2923 -> load' f "glVertexAttrib4Nsv" ffiuintPtrshortIOV
	2924 -> load' f "glVertexAttrib4Nub" ffiuintubyteubyteubyteubyteIOV
	2925 -> load' f "glVertexAttrib4Nubv" ffiuintPtrubyteIOV
	2926 -> load' f "glVertexAttrib4Nuiv" ffiuintPtruintIOV
	2927 -> load' f "glVertexAttrib4Nusv" ffiuintPtrushortIOV
	2928 -> load' f "glVertexAttrib4bv" ffiuintPtrbyteIOV
	2929 -> load' f "glVertexAttrib4d" ffiuintdoubledoubledoubledoubleIOV
	2930 -> load' f "glVertexAttrib4dv" ffiuintPtrdoubleIOV
	2931 -> load' f "glVertexAttrib4f" ffiuintfloatfloatfloatfloatIOV
	2932 -> load' f "glVertexAttrib4fv" ffiuintPtrfloatIOV
	2933 -> load' f "glVertexAttrib4iv" ffiuintPtrintIOV
	2934 -> load' f "glVertexAttrib4s" ffiuintshortshortshortshortIOV
	2935 -> load' f "glVertexAttrib4sv" ffiuintPtrshortIOV
	2936 -> load' f "glVertexAttrib4ubv" ffiuintPtrubyteIOV
	2937 -> load' f "glVertexAttrib4uiv" ffiuintPtruintIOV
	2938 -> load' f "glVertexAttrib4usv" ffiuintPtrushortIOV
	2939 -> load' f "glVertexAttribI1i" ffiuintintIOV
	2940 -> load' f "glVertexAttribI1iv" ffiuintPtrintIOV
	2941 -> load' f "glVertexAttribI1ui" ffiuintuintIOV
	2942 -> load' f "glVertexAttribI1uiv" ffiuintPtruintIOV
	2943 -> load' f "glVertexAttribI2i" ffiuintintintIOV
	2944 -> load' f "glVertexAttribI2iv" ffiuintPtrintIOV
	2945 -> load' f "glVertexAttribI2ui" ffiuintuintuintIOV
	2946 -> load' f "glVertexAttribI2uiv" ffiuintPtruintIOV
	2947 -> load' f "glVertexAttribI3i" ffiuintintintintIOV
	2948 -> load' f "glVertexAttribI3iv" ffiuintPtrintIOV
	2949 -> load' f "glVertexAttribI3ui" ffiuintuintuintuintIOV
	2950 -> load' f "glVertexAttribI3uiv" ffiuintPtruintIOV
	2951 -> load' f "glVertexAttribI4bv" ffiuintPtrbyteIOV
	2952 -> load' f "glVertexAttribI4i" ffiuintintintintintIOV
	2953 -> load' f "glVertexAttribI4iv" ffiuintPtrintIOV
	2954 -> load' f "glVertexAttribI4sv" ffiuintPtrshortIOV
	2955 -> load' f "glVertexAttribI4ubv" ffiuintPtrubyteIOV
	2956 -> load' f "glVertexAttribI4ui" ffiuintuintuintuintuintIOV
	2957 -> load' f "glVertexAttribI4uiv" ffiuintPtruintIOV
	2958 -> load' f "glVertexAttribI4usv" ffiuintPtrushortIOV
	2959 -> load' f "glVertexAttribIPointer" ffiuintintenumsizeiPtrVIOV
	2960 -> load' f "glVertexAttribPointer" ffiuintintenumbooleansizeiPtrVIOV
	2961 -> load' f "glViewport" ffiintintsizeisizeiIOV
	2962 -> load' f "glVertexAttribDivisor" ffiuintuintIOV
	2963 -> load' f "glBlendEquationSeparatei" ffiuintenumenumIOV
	2964 -> load' f "glBlendEquationi" ffiuintenumIOV
	2965 -> load' f "glBlendFuncSeparatei" ffiuintenumenumenumenumIOV
	2966 -> load' f "glBlendFunci" ffiuintenumenumIOV
	2967 -> load' f "glMinSampleShading" ffifloatIOV
	2968 -> load' f "glGetnCompressedTexImage" ffienumintsizeiPtrVIOV
	2969 -> load' f "glGetnTexImage" ffienumintenumenumsizeiPtrVIOV
	2970 -> load' f "glGetnUniformdv" ffiuintintsizeiPtrdoubleIOV
	2971 -> load' f "glClipPlanef" ffienumPtrfloatIOV
	2972 -> load' f "glFrustumf" ffifloatfloatfloatfloatfloatfloatIOV
	2973 -> load' f "glGetClipPlanef" ffienumPtrfloatIOV
	2974 -> load' f "glOrthof" ffifloatfloatfloatfloatfloatfloatIOV
	2975 -> load' f "glAlphaFuncx" ffienumfixedIOV
	2976 -> load' f "glClearColorx" ffifixedfixedfixedfixedIOV
	2977 -> load' f "glClearDepthx" ffifixedIOV
	2978 -> load' f "glClipPlanex" ffienumPtrfixedIOV
	2979 -> load' f "glColor4x" ffifixedfixedfixedfixedIOV
	2980 -> load' f "glDepthRangex" ffifixedfixedIOV
	2981 -> load' f "glFogx" ffienumfixedIOV
	2982 -> load' f "glFogxv" ffienumPtrfixedIOV
	2983 -> load' f "glFrustumx" ffifixedfixedfixedfixedfixedfixedIOV
	2984 -> load' f "glGetClipPlanex" ffienumPtrfixedIOV
	2985 -> load' f "glGetFixedv" ffienumPtrfixedIOV
	2986 -> load' f "glGetLightxv" ffienumenumPtrfixedIOV
	2987 -> load' f "glGetMaterialxv" ffienumenumPtrfixedIOV
	2988 -> load' f "glGetTexEnvxv" ffienumenumPtrfixedIOV
	2989 -> load' f "glGetTexParameterxv" ffienumenumPtrfixedIOV
	2990 -> load' f "glLightModelx" ffienumfixedIOV
	2991 -> load' f "glLightModelxv" ffienumPtrfixedIOV
	2992 -> load' f "glLightx" ffienumenumfixedIOV
	2993 -> load' f "glLightxv" ffienumenumPtrfixedIOV
	2994 -> load' f "glLineWidthx" ffifixedIOV
	2995 -> load' f "glLoadMatrixx" ffiPtrfixedIOV
	2996 -> load' f "glMaterialx" ffienumenumfixedIOV
	2997 -> load' f "glMaterialxv" ffienumenumPtrfixedIOV
	2998 -> load' f "glMultMatrixx" ffiPtrfixedIOV
	2999 -> load' f "glMultiTexCoord4x" ffienumfixedfixedfixedfixedIOV
	3000 -> load' f "glNormal3x" ffifixedfixedfixedIOV
	3001 -> load' f "glOrthox" ffifixedfixedfixedfixedfixedfixedIOV
	3002 -> load' f "glPointParameterx" ffienumfixedIOV
	3003 -> load' f "glPointParameterxv" ffienumPtrfixedIOV
	3004 -> load' f "glPointSizex" ffifixedIOV
	3005 -> load' f "glPolygonOffsetx" ffifixedfixedIOV
	3006 -> load' f "glRotatex" ffifixedfixedfixedfixedIOV
	3007 -> load' f "glSampleCoveragex" fficlampxbooleanIOV
	3008 -> load' f "glScalex" ffifixedfixedfixedIOV
	3009 -> load' f "glTexEnvx" ffienumenumfixedIOV
	3010 -> load' f "glTexEnvxv" ffienumenumPtrfixedIOV
	3011 -> load' f "glTexParameterx" ffienumenumfixedIOV
	3012 -> load' f "glTexParameterxv" ffienumenumPtrfixedIOV
	3013 -> load' f "glTranslatex" ffifixedfixedfixedIOV


foreign import ccall "dynamic"
	ffiDEBUGPROCAMDPtrVIOV :: FunPtr (GLDEBUGPROCAMD -> Ptr () -> IO ()) -> GLDEBUGPROCAMD -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeiPtruintbooleanIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()) -> GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumuintsizeiPtrcharIOV :: FunPtr (GLenum -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()) -> GLenum -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrenumPtruintPtruintPtrsizeiPtrcharIOuint :: FunPtr (GLuint -> GLsizei -> Ptr GLenum -> Ptr GLuint -> Ptr GLuint -> Ptr GLsizei -> Ptr GLchar -> IO GLuint) -> GLuint -> GLsizei -> Ptr GLenum -> Ptr GLuint -> Ptr GLuint -> Ptr GLsizei -> Ptr GLchar -> IO GLuint

foreign import ccall "dynamic"
	ffiuintenumIOV :: FunPtr (GLuint -> GLenum -> IO ()) -> GLuint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumIOV :: FunPtr (GLuint -> GLenum -> GLenum -> IO ()) -> GLuint -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumenumenumIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()) -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintintPtrint64EXTIOV :: FunPtr (GLuint -> GLint -> Ptr GLint64EXT -> IO ()) -> GLuint -> GLint -> Ptr GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintPtruint64EXTIOV :: FunPtr (GLuint -> GLint -> Ptr GLuint64EXT -> IO ()) -> GLuint -> GLint -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintint64EXTIOV :: FunPtr (GLuint -> GLint -> GLint64EXT -> IO ()) -> GLuint -> GLint -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtrint64EXTIOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr GLint64EXT -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintuint64EXTIOV :: FunPtr (GLuint -> GLint -> GLuint64EXT -> IO ()) -> GLuint -> GLint -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtruint64EXTIOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr GLuint64EXT -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintint64EXTint64EXTIOV :: FunPtr (GLuint -> GLint -> GLint64EXT -> GLint64EXT -> IO ()) -> GLuint -> GLint -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintuint64EXTuint64EXTIOV :: FunPtr (GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintint64EXTint64EXTint64EXTIOV :: FunPtr (GLuint -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()) -> GLuint -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintuint64EXTuint64EXTuint64EXTIOV :: FunPtr (GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintint64EXTint64EXTint64EXTint64EXTIOV :: FunPtr (GLuint -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()) -> GLuint -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintuint64EXTuint64EXTuint64EXTuint64EXTIOV :: FunPtr (GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintint64EXTIOV :: FunPtr (GLint -> GLint64EXT -> IO ()) -> GLint -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintsizeiPtrint64EXTIOV :: FunPtr (GLint -> GLsizei -> Ptr GLint64EXT -> IO ()) -> GLint -> GLsizei -> Ptr GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintuint64EXTIOV :: FunPtr (GLint -> GLuint64EXT -> IO ()) -> GLint -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintsizeiPtruint64EXTIOV :: FunPtr (GLint -> GLsizei -> Ptr GLuint64EXT -> IO ()) -> GLint -> GLsizei -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintint64EXTint64EXTIOV :: FunPtr (GLint -> GLint64EXT -> GLint64EXT -> IO ()) -> GLint -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintuint64EXTuint64EXTIOV :: FunPtr (GLint -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLint -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintint64EXTint64EXTint64EXTIOV :: FunPtr (GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()) -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintuint64EXTuint64EXTuint64EXTIOV :: FunPtr (GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintint64EXTint64EXTint64EXTint64EXTIOV :: FunPtr (GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()) -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiintuint64EXTuint64EXTuint64EXTuint64EXTIOV :: FunPtr (GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintIOV :: FunPtr (GLuint -> GLenum -> GLint -> IO ()) -> GLuint -> GLenum -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumPtrVsizeisizeiIOV :: FunPtr (GLenum -> Ptr () -> GLsizei -> GLsizei -> IO ()) -> GLenum -> Ptr () -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrVsizeisizeiIOV :: FunPtr (GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtruintIOV :: FunPtr (GLenum -> GLuint -> Ptr GLuint -> IO ()) -> GLenum -> GLuint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintIOboolean :: FunPtr (GLenum -> GLuint -> IO GLboolean) -> GLenum -> GLuint -> IO GLboolean

foreign import ccall "dynamic"
	ffienumuintenumuintIOV :: FunPtr (GLenum -> GLuint -> GLenum -> GLuint -> IO ()) -> GLenum -> GLuint -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintIOV :: FunPtr (GLuint -> IO ()) -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtruintIOV :: FunPtr (GLsizei -> Ptr GLuint -> IO ()) -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeiPtruintPtrintIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> Ptr GLuint -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLsizei -> Ptr GLuint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumPtrVIOV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLuint -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintsizeiPtrsizeiPtrcharIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()) -> GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrintPtrintsizeiPtruintIOV :: FunPtr (GLuint -> Ptr GLint -> Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()) -> GLuint -> Ptr GLint -> Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrsizeiPtrcharIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()) -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiPtrintsizeiPtruintIOV :: FunPtr (Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()) -> Ptr GLint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintbooleanuintintPtruintIOV :: FunPtr (GLuint -> GLboolean -> GLuint -> GLint -> Ptr GLuint -> IO ()) -> GLuint -> GLboolean -> GLuint -> GLint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtrfloatIOV :: FunPtr (GLenum -> GLuint -> Ptr GLfloat -> IO ()) -> GLenum -> GLuint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeisizeisizeisizeibitfieldIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()) -> GLenum -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumsizeisizeisizeisizeibitfieldIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()) -> GLuint -> GLenum -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffienumuintIOV :: FunPtr (GLenum -> GLuint -> IO ()) -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffifloatIOV :: FunPtr (GLfloat -> IO ()) -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumIOV :: FunPtr (GLenum -> IO ()) -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiintintintintintintintintbitfieldenumIOV :: FunPtr (GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()) -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumsizeisizeiIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumintsizeisizeiIOV :: FunPtr (GLenum -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumPtrVsizeiIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> IO ()) -> GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintuintIOV :: FunPtr (GLuint -> GLuint -> IO ()) -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintsizeiIOV :: FunPtr (GLuint -> GLuint -> GLint -> GLsizei -> IO ()) -> GLuint -> GLuint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumintsizeiIOV :: FunPtr (GLenum -> GLint -> GLsizei -> IO ()) -> GLenum -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintintsizeiIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLint -> GLsizei -> IO ()) -> GLenum -> GLuint -> GLuint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumPtrVIOV :: FunPtr (GLenum -> Ptr () -> IO ()) -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumPtrintPtrsizeisizeiIOV :: FunPtr (GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()) -> GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintPtrintPtrsizeisizeiIOV :: FunPtr (GLenum -> GLuint -> GLuint -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()) -> GLenum -> GLuint -> GLuint -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumintIOV :: FunPtr (GLenum -> GLint -> IO ()) -> GLenum -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintIOboolean :: FunPtr (GLuint -> IO GLboolean) -> GLuint -> IO GLboolean

foreign import ccall "dynamic"
	ffienumenumintIOV :: FunPtr (GLenum -> GLenum -> GLint -> IO ()) -> GLenum -> GLenum -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumintptrsizeiptrIOV :: FunPtr (GLenum -> GLintptr -> GLsizeiptr -> IO ()) -> GLenum -> GLintptr -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffiIOV :: FunPtr (IO ()) -> IO ()

foreign import ccall "dynamic"
	ffienumuintenumPtrintIOV :: FunPtr (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()) -> GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumuintenumIOenum :: FunPtr (GLenum -> GLuint -> GLenum -> IO GLenum) -> GLenum -> GLuint -> GLenum -> IO GLenum

foreign import ccall "dynamic"
	ffisyncbitfielduint64IOenum :: FunPtr (GLsync -> GLbitfield -> GLuint64 -> IO GLenum) -> GLsync -> GLbitfield -> GLuint64 -> IO GLenum

foreign import ccall "dynamic"
	ffisyncIOV :: FunPtr (GLsync -> IO ()) -> GLsync -> IO ()

foreign import ccall "dynamic"
	ffienumbitfieldIOsync :: FunPtr (GLenum -> GLbitfield -> IO GLsync) -> GLenum -> GLbitfield -> IO GLsync

foreign import ccall "dynamic"
	ffienumPtrint64IOV :: FunPtr (GLenum -> Ptr GLint64 -> IO ()) -> GLenum -> Ptr GLint64 -> IO ()

foreign import ccall "dynamic"
	ffisyncenumsizeiPtrsizeiPtrintIOV :: FunPtr (GLsync -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()) -> GLsync -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffisyncIOboolean :: FunPtr (GLsync -> IO GLboolean) -> GLsync -> IO GLboolean

foreign import ccall "dynamic"
	ffisyncbitfielduint64IOV :: FunPtr (GLsync -> GLbitfield -> GLuint64 -> IO ()) -> GLsync -> GLbitfield -> GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiPtrVIOV :: FunPtr (GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrVIOV :: FunPtr (GLsizei -> Ptr () -> IO ()) -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumIOboolean :: FunPtr (GLuint -> GLenum -> IO GLboolean) -> GLuint -> GLenum -> IO GLboolean

foreign import ccall "dynamic"
	ffiuintuintdoubledoubleintintPtrdoubleIOV :: FunPtr (GLuint -> GLuint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()) -> GLuint -> GLuint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintuintfloatfloatintintPtrfloatIOV :: FunPtr (GLuint -> GLuint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()) -> GLuint -> GLuint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintuintdoubledoubleintintdoubledoubleintintPtrdoubleIOV :: FunPtr (GLuint -> GLuint -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()) -> GLuint -> GLuint -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintuintfloatfloatintintfloatfloatintintPtrfloatIOV :: FunPtr (GLuint -> GLuint -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()) -> GLuint -> GLuint -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumintsizeisizeiuintIOV :: FunPtr (GLenum -> GLint -> GLsizei -> GLsizei -> GLuint -> IO ()) -> GLenum -> GLint -> GLsizei -> GLsizei -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumPtrVsizeiuintIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLuint -> IO ()) -> GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumPtrVsizeiintuintIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> GLuint -> IO ()) -> GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintbooleanintenumIOuint64 :: FunPtr (GLuint -> GLint -> GLboolean -> GLint -> GLenum -> IO GLuint64) -> GLuint -> GLint -> GLboolean -> GLint -> GLenum -> IO GLuint64

foreign import ccall "dynamic"
	ffiuintIOuint64 :: FunPtr (GLuint -> IO GLuint64) -> GLuint -> IO GLuint64

foreign import ccall "dynamic"
	ffiuintuintIOuint64 :: FunPtr (GLuint -> GLuint -> IO GLuint64) -> GLuint -> GLuint -> IO GLuint64

foreign import ccall "dynamic"
	ffiuintenumPtruint64EXTIOV :: FunPtr (GLuint -> GLenum -> Ptr GLuint64EXT -> IO ()) -> GLuint -> GLenum -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuint64IOboolean :: FunPtr (GLuint64 -> IO GLboolean) -> GLuint64 -> IO GLboolean

foreign import ccall "dynamic"
	ffiuint64IOV :: FunPtr (GLuint64 -> IO ()) -> GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffiuint64enumIOV :: FunPtr (GLuint64 -> GLenum -> IO ()) -> GLuint64 -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintintuint64IOV :: FunPtr (GLuint -> GLint -> GLuint64 -> IO ()) -> GLuint -> GLint -> GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtruint64IOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffiintuint64IOV :: FunPtr (GLint -> GLuint64 -> IO ()) -> GLint -> GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffiintsizeiPtruint64IOV :: FunPtr (GLint -> GLsizei -> Ptr GLuint64 -> IO ()) -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffiuintuint64EXTIOV :: FunPtr (GLuint -> GLuint64EXT -> IO ()) -> GLuint -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintPtruint64EXTIOV :: FunPtr (GLuint -> Ptr GLuint64EXT -> IO ()) -> GLuint -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintPtrcharIOV :: FunPtr (GLuint -> GLuint -> GLuint -> Ptr GLchar -> IO ()) -> GLuint -> GLuint -> GLuint -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrcharIOint :: FunPtr (GLuint -> Ptr GLchar -> IO GLint) -> GLuint -> Ptr GLchar -> IO GLint

foreign import ccall "dynamic"
	ffienumsizeiptrPtrVbitfieldIOV :: FunPtr (GLenum -> GLsizeiptr -> Ptr () -> GLbitfield -> IO ()) -> GLenum -> GLsizeiptr -> Ptr () -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffiPtrVPtrVbitfieldIOsync :: FunPtr (Ptr () -> Ptr () -> GLbitfield -> IO GLsync) -> Ptr () -> Ptr () -> GLbitfield -> IO GLsync

foreign import ccall "dynamic"
	ffienumenumenumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintptrsizeiptrenumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLintptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLintptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumenumPtrVIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintsizeisizeisizeienumenumPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumIOV :: FunPtr (GLenum -> GLenum -> IO ()) -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintIOV :: FunPtr (GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintptrIOV :: FunPtr (GLintptr -> IO ()) -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintuintuintuintIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumenumintptrintptrsizeiptrIOV :: FunPtr (GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()) -> GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintintuintenumintintintintsizeisizeisizeiIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiDEBUGPROCARBPtrVIOV :: FunPtr (GLDEBUGPROCARB -> Ptr () -> IO ()) -> GLDEBUGPROCARB -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumsizeiPtruintbooleanIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()) -> GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumuintenumsizeiPtrcharIOV :: FunPtr (GLenum -> GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> IO ()) -> GLenum -> GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrenumPtrenumPtruintPtrenumPtrsizeiPtrcharIOuint :: FunPtr (GLuint -> GLsizei -> Ptr GLenum -> Ptr GLenum -> Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> IO GLuint) -> GLuint -> GLsizei -> Ptr GLenum -> Ptr GLenum -> Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> IO GLuint

foreign import ccall "dynamic"
	ffiuintuintintintintintintintintintbitfieldenumIOV :: FunPtr (GLuint -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()) -> GLuint -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintenumIOenum :: FunPtr (GLuint -> GLenum -> IO GLenum) -> GLuint -> GLenum -> IO GLenum

foreign import ccall "dynamic"
	ffiuintenumenumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintptrsizeienumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLintptr -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLintptr -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumfloatintIOV :: FunPtr (GLuint -> GLenum -> GLfloat -> GLint -> IO ()) -> GLuint -> GLenum -> GLfloat -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintPtrfloatIOV :: FunPtr (GLuint -> GLenum -> GLint -> Ptr GLfloat -> IO ()) -> GLuint -> GLenum -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintPtrintIOV :: FunPtr (GLuint -> GLenum -> GLint -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintPtruintIOV :: FunPtr (GLuint -> GLenum -> GLint -> Ptr GLuint -> IO ()) -> GLuint -> GLenum -> GLint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintintsizeienumsizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintsizeisizeienumsizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintsizeisizeisizeienumsizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintptrintptrsizeiIOV :: FunPtr (GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizei -> IO ()) -> GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintsizeiIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintintsizeisizeiIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintintintsizeisizeiIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiPtruintIOV :: FunPtr (GLenum -> GLsizei -> Ptr GLuint -> IO ()) -> GLenum -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintptrsizeiIOV :: FunPtr (GLuint -> GLintptr -> GLsizei -> IO ()) -> GLuint -> GLintptr -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrint64IOV :: FunPtr (GLuint -> GLenum -> Ptr GLint64 -> IO ()) -> GLuint -> GLenum -> Ptr GLint64 -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrintIOV :: FunPtr (GLuint -> GLenum -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrVIOV :: FunPtr (GLuint -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintptrsizeiPtrVIOV :: FunPtr (GLuint -> GLintptr -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLintptr -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumPtrintIOV :: FunPtr (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumintptrIOV :: FunPtr (GLuint -> GLuint -> GLenum -> GLintptr -> IO ()) -> GLuint -> GLuint -> GLenum -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumenumsizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumPtrfloatIOV :: FunPtr (GLuint -> GLint -> GLenum -> Ptr GLfloat -> IO ()) -> GLuint -> GLint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumPtrintIOV :: FunPtr (GLuint -> GLint -> GLenum -> Ptr GLint -> IO ()) -> GLuint -> GLint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtruintIOV :: FunPtr (GLuint -> GLenum -> Ptr GLuint -> IO ()) -> GLuint -> GLenum -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrfloatIOV :: FunPtr (GLuint -> GLenum -> Ptr GLfloat -> IO ()) -> GLuint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintPtrint64IOV :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLint64 -> IO ()) -> GLuint -> GLenum -> GLuint -> Ptr GLint64 -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintPtrintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumPtrint64IOV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLint64 -> IO ()) -> GLuint -> GLuint -> GLenum -> Ptr GLint64 -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumPtrintIOV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()) -> GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrenumIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLenum -> IO ()) -> GLuint -> GLsizei -> Ptr GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrenumintintsizeisizeiIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLsizei -> Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumIOPtrV :: FunPtr (GLuint -> GLenum -> IO (Ptr ())) -> GLuint -> GLenum -> IO (Ptr ())

foreign import ccall "dynamic"
	ffiuintintptrsizeibitfieldIOPtrV :: FunPtr (GLuint -> GLintptr -> GLsizei -> GLbitfield -> IO (Ptr ())) -> GLuint -> GLintptr -> GLsizei -> GLbitfield -> IO (Ptr ())

foreign import ccall "dynamic"
	ffiuintsizeiPtrVenumIOV :: FunPtr (GLuint -> GLsizei -> Ptr () -> GLenum -> IO ()) -> GLuint -> GLsizei -> Ptr () -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrVbitfieldIOV :: FunPtr (GLuint -> GLsizei -> Ptr () -> GLbitfield -> IO ()) -> GLuint -> GLsizei -> Ptr () -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumuintIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> IO ()) -> GLuint -> GLenum -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintintintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeisizeiIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeienumsizeisizeiIOV :: FunPtr (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> IO ()) -> GLuint -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintintptrsizeiIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLintptr -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLuint -> GLintptr -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumfloatIOV :: FunPtr (GLuint -> GLenum -> GLfloat -> IO ()) -> GLuint -> GLenum -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeienumsizeiIOV :: FunPtr (GLuint -> GLsizei -> GLenum -> GLsizei -> IO ()) -> GLuint -> GLsizei -> GLenum -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeienumsizeisizeibooleanIOV :: FunPtr (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeienumsizeisizeisizeiIOV :: FunPtr (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeienumsizeisizeisizeibooleanIOV :: FunPtr (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintintintsizeienumenumPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintsizeisizeienumenumPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintintptrsizeiIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLintptr -> GLsizei -> IO ()) -> GLuint -> GLuint -> GLuint -> GLintptr -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintenumbooleanuintIOV :: FunPtr (GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ()) -> GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintenumuintIOV :: FunPtr (GLuint -> GLuint -> GLint -> GLenum -> GLuint -> IO ()) -> GLuint -> GLuint -> GLint -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintsizeiPtruintPtrintptrPtrsizeiIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizei -> IO ()) -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizei -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrenumIOV :: FunPtr (GLsizei -> Ptr GLenum -> IO ()) -> GLsizei -> Ptr GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumPtrVintIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> Ptr () -> GLint -> IO ()) -> GLenum -> GLsizei -> GLenum -> Ptr () -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumPtrVsizeiintIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> IO ()) -> GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintsizeienumPtrVintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr () -> GLint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr () -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumPtrsizeienumPtrVsizeiPtrintIOV :: FunPtr (GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> Ptr GLint -> IO ()) -> GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrintPtrintIOV :: FunPtr (GLenum -> GLenum -> Ptr GLint -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> Ptr GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtruintenumPtrVsizeiIOV :: FunPtr (GLsizei -> Ptr GLuint -> GLenum -> Ptr () -> GLsizei -> IO ()) -> GLsizei -> Ptr GLuint -> GLenum -> Ptr () -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffibitfieldIOV :: FunPtr (GLbitfield -> IO ()) -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtrdoubleIOV :: FunPtr (GLenum -> GLuint -> Ptr GLdouble -> IO ()) -> GLenum -> GLuint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrintIOV :: FunPtr (GLenum -> GLenum -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumuintdoubledoubledoubledoubleIOV :: FunPtr (GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumuintfloatfloatfloatfloatIOV :: FunPtr (GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumIOenum :: FunPtr (GLenum -> IO GLenum) -> GLenum -> IO GLenum

foreign import ccall "dynamic"
	ffienumenumenumuintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLuint -> IO ()) -> GLenum -> GLenum -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumuintintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()) -> GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumuintintintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()) -> GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumuintintintIOV :: FunPtr (GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()) -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumPtrintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeisizeiIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumuintintIOV :: FunPtr (GLenum -> GLenum -> GLuint -> GLint -> IO ()) -> GLenum -> GLenum -> GLuint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumuintintenumIOV :: FunPtr (GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ()) -> GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrsizeiPtrenumPtrVIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr () -> IO ()) -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrVsizeiIOV :: FunPtr (GLuint -> GLenum -> Ptr () -> GLsizei -> IO ()) -> GLuint -> GLenum -> Ptr () -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintsizeisizeisizeisizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintsizeisizeisizeienumenumsizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintPtrdoubleIOV :: FunPtr (GLuint -> GLint -> Ptr GLdouble -> IO ()) -> GLuint -> GLint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintdoubleIOV :: FunPtr (GLint -> GLdouble -> IO ()) -> GLint -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintsizeiPtrdoubleIOV :: FunPtr (GLint -> GLsizei -> Ptr GLdouble -> IO ()) -> GLint -> GLsizei -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintdoubledoubleIOV :: FunPtr (GLint -> GLdouble -> GLdouble -> IO ()) -> GLint -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintdoubledoubledoubleIOV :: FunPtr (GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintdoubledoubledoubledoubleIOV :: FunPtr (GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintsizeibooleanPtrdoubleIOV :: FunPtr (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()) -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumsizeisizeienumenumPtrVIOV :: FunPtr (GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeienumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrfloatIOV :: FunPtr (GLenum -> GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeisizeienumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumfloatIOV :: FunPtr (GLenum -> GLenum -> GLfloat -> IO ()) -> GLenum -> GLenum -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiintintsizeiIOV :: FunPtr (GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ()) -> GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintsizeiIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintsizeisizeiIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumbooleanenumenumPtrVIOV :: FunPtr (GLenum -> GLboolean -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLboolean -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumPtrVPtrVPtrVIOV :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr () -> Ptr () -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLenum -> Ptr () -> Ptr () -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumbooleanIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> GLboolean -> IO ()) -> GLenum -> GLsizei -> GLenum -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumbooleanIOV :: FunPtr (GLenum -> GLenum -> GLboolean -> IO ()) -> GLenum -> GLenum -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeisizeienumenumPtrVPtrVIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintptrintptrsizeisizeiIOV :: FunPtr (GLenum -> GLintptr -> GLintptr -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLintptr -> GLintptr -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumintptrintptrsizeisizeiIOV :: FunPtr (GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumsizeiPtrintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumsizeiPtrint64IOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint64 -> IO ()) -> GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint64 -> IO ()

foreign import ccall "dynamic"
	ffiuintintptrsizeiptrIOV :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> IO ()) -> GLuint -> GLintptr -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiPtrenumIOV :: FunPtr (GLenum -> GLsizei -> Ptr GLenum -> IO ()) -> GLenum -> GLsizei -> Ptr GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiPtrenumintintsizeisizeiIOV :: FunPtr (GLenum -> GLsizei -> Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLsizei -> Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintintIOV :: FunPtr (GLuint -> GLint -> IO ()) -> GLuint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintsizeisizeisizeiIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumintptrsizeiptrbitfieldIOPtrV :: FunPtr (GLenum -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr ())) -> GLenum -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr ())

foreign import ccall "dynamic"
	ffiintIOV :: FunPtr (GLint -> IO ()) -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiintenumsizeiPtrVIOV :: FunPtr (GLint -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLint -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiintPtrubyteIOV :: FunPtr (GLint -> Ptr GLubyte -> IO ()) -> GLint -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiintPtruintIOV :: FunPtr (GLint -> Ptr GLuint -> IO ()) -> GLint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintPtrushortIOV :: FunPtr (GLint -> Ptr GLushort -> IO ()) -> GLint -> Ptr GLushort -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtruintIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtruintPtrintptrPtrsizeiptrIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizeiptr -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtruintIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLuint -> IO ()) -> GLuint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtruintPtrintptrPtrsizeiIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizei -> IO ()) -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizei -> IO ()

foreign import ccall "dynamic"
	ffifloatbooleanIOV :: FunPtr (GLfloat -> GLboolean -> IO ()) -> GLfloat -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumdoubleIOV :: FunPtr (GLenum -> GLdouble -> IO ()) -> GLenum -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumPtrdoubleIOV :: FunPtr (GLenum -> Ptr GLdouble -> IO ()) -> GLenum -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumfloatIOV :: FunPtr (GLenum -> GLfloat -> IO ()) -> GLenum -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumPtrfloatIOV :: FunPtr (GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumPtrintIOV :: FunPtr (GLenum -> Ptr GLint -> IO ()) -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumshortIOV :: FunPtr (GLenum -> GLshort -> IO ()) -> GLenum -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumPtrshortIOV :: FunPtr (GLenum -> Ptr GLshort -> IO ()) -> GLenum -> Ptr GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumdoubledoubleIOV :: FunPtr (GLenum -> GLdouble -> GLdouble -> IO ()) -> GLenum -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumfloatfloatIOV :: FunPtr (GLenum -> GLfloat -> GLfloat -> IO ()) -> GLenum -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumintintIOV :: FunPtr (GLenum -> GLint -> GLint -> IO ()) -> GLenum -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumshortshortIOV :: FunPtr (GLenum -> GLshort -> GLshort -> IO ()) -> GLenum -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumdoubledoubledoubleIOV :: FunPtr (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumfloatfloatfloatIOV :: FunPtr (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumintintintIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumshortshortshortIOV :: FunPtr (GLenum -> GLshort -> GLshort -> GLshort -> IO ()) -> GLenum -> GLshort -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumdoubledoubledoubledoubleIOV :: FunPtr (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumfloatfloatfloatfloatIOV :: FunPtr (GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumshortshortshortshortIOV :: FunPtr (GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()) -> GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrcharIOuint :: FunPtr (GLuint -> GLenum -> Ptr GLchar -> IO GLuint) -> GLuint -> GLenum -> Ptr GLchar -> IO GLuint

foreign import ccall "dynamic"
	ffiuintenumPtrcharIOint :: FunPtr (GLuint -> GLenum -> Ptr GLchar -> IO GLint) -> GLuint -> GLenum -> Ptr GLchar -> IO GLint

foreign import ccall "dynamic"
	ffiuintenumuintsizeiPtrsizeiPtrcharIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()) -> GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintsizeiPtrenumsizeiPtrsizeiPtrintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiIOenum :: FunPtr (IO GLenum) -> IO GLenum

foreign import ccall "dynamic"
	ffienumenumenumsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumbooleanenumenumsizeiPtrVIOV :: FunPtr (GLenum -> GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeiPtrdoubleIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> IO ()) -> GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeiPtrfloatIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> IO ()) -> GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeiPtrintIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiPtrfloatIOV :: FunPtr (GLenum -> GLsizei -> Ptr GLfloat -> IO ()) -> GLenum -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiPtrushortIOV :: FunPtr (GLenum -> GLsizei -> Ptr GLushort -> IO ()) -> GLenum -> GLsizei -> Ptr GLushort -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrubyteIOV :: FunPtr (GLsizei -> Ptr GLubyte -> IO ()) -> GLsizei -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumsizeiPtrVsizeiPtrVPtrVIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> GLsizei -> Ptr () -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> GLsizei -> Ptr () -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintenumenumsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtrdoubleIOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtrfloatIOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtrintIOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeiPtruintIOV :: FunPtr (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()) -> GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintintsizeisizeienumenumsizeiPtrVIOV :: FunPtr (GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiPtrcharIOuint :: FunPtr (GLenum -> GLsizei -> Ptr GLchar -> IO GLuint) -> GLenum -> GLsizei -> Ptr GLchar -> IO GLuint

foreign import ccall "dynamic"
	ffiuintintdoubleIOV :: FunPtr (GLuint -> GLint -> GLdouble -> IO ()) -> GLuint -> GLint -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintintfloatIOV :: FunPtr (GLuint -> GLint -> GLfloat -> IO ()) -> GLuint -> GLint -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintintIOV :: FunPtr (GLuint -> GLint -> GLint -> IO ()) -> GLuint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintuintIOV :: FunPtr (GLuint -> GLint -> GLuint -> IO ()) -> GLuint -> GLint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintdoubledoubleIOV :: FunPtr (GLuint -> GLint -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLint -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintintfloatfloatIOV :: FunPtr (GLuint -> GLint -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLint -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintuintuintIOV :: FunPtr (GLuint -> GLint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintdoubledoubledoubleIOV :: FunPtr (GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintintfloatfloatfloatIOV :: FunPtr (GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintuintuintuintIOV :: FunPtr (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintdoubledoubledoubledoubleIOV :: FunPtr (GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintintfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintintIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintuintuintuintuintIOV :: FunPtr (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeibooleanPtrdoubleIOV :: FunPtr (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()) -> GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintintsizeibooleanPtrfloatIOV :: FunPtr (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()) -> GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintbitfielduintIOV :: FunPtr (GLuint -> GLbitfield -> GLuint -> IO ()) -> GLuint -> GLbitfield -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintbooleanintenumenumIOV :: FunPtr (GLuint -> GLuint -> GLint -> GLboolean -> GLint -> GLenum -> GLenum -> IO ()) -> GLuint -> GLuint -> GLint -> GLboolean -> GLint -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffihandleARBhandleARBIOV :: FunPtr (GLhandleARB -> GLhandleARB -> IO ()) -> GLhandleARB -> GLhandleARB -> IO ()

foreign import ccall "dynamic"
	ffihandleARBIOV :: FunPtr (GLhandleARB -> IO ()) -> GLhandleARB -> IO ()

foreign import ccall "dynamic"
	ffiIOhandleARB :: FunPtr (IO GLhandleARB) -> IO GLhandleARB

foreign import ccall "dynamic"
	ffienumIOhandleARB :: FunPtr (GLenum -> IO GLhandleARB) -> GLenum -> IO GLhandleARB

foreign import ccall "dynamic"
	ffihandleARBuintsizeiPtrsizeiPtrintPtrenumPtrcharARBIOV :: FunPtr (GLhandleARB -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLcharARB -> IO ()) -> GLhandleARB -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLcharARB -> IO ()

foreign import ccall "dynamic"
	ffihandleARBsizeiPtrsizeiPtrhandleARBIOV :: FunPtr (GLhandleARB -> GLsizei -> Ptr GLsizei -> Ptr GLhandleARB -> IO ()) -> GLhandleARB -> GLsizei -> Ptr GLsizei -> Ptr GLhandleARB -> IO ()

foreign import ccall "dynamic"
	ffihandleARBsizeiPtrsizeiPtrcharARBIOV :: FunPtr (GLhandleARB -> GLsizei -> Ptr GLsizei -> Ptr GLcharARB -> IO ()) -> GLhandleARB -> GLsizei -> Ptr GLsizei -> Ptr GLcharARB -> IO ()

foreign import ccall "dynamic"
	ffihandleARBenumPtrfloatIOV :: FunPtr (GLhandleARB -> GLenum -> Ptr GLfloat -> IO ()) -> GLhandleARB -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffihandleARBenumPtrintIOV :: FunPtr (GLhandleARB -> GLenum -> Ptr GLint -> IO ()) -> GLhandleARB -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffihandleARBPtrcharARBIOint :: FunPtr (GLhandleARB -> Ptr GLcharARB -> IO GLint) -> GLhandleARB -> Ptr GLcharARB -> IO GLint

foreign import ccall "dynamic"
	ffihandleARBintPtrfloatIOV :: FunPtr (GLhandleARB -> GLint -> Ptr GLfloat -> IO ()) -> GLhandleARB -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffihandleARBintPtrintIOV :: FunPtr (GLhandleARB -> GLint -> Ptr GLint -> IO ()) -> GLhandleARB -> GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffihandleARBsizeiPtrcharARBPtrintIOV :: FunPtr (GLhandleARB -> GLsizei -> Ptr GLcharARB -> Ptr GLint -> IO ()) -> GLhandleARB -> GLsizei -> Ptr GLcharARB -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiintfloatIOV :: FunPtr (GLint -> GLfloat -> IO ()) -> GLint -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiintsizeiPtrfloatIOV :: FunPtr (GLint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiintintIOV :: FunPtr (GLint -> GLint -> IO ()) -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiintsizeiPtrintIOV :: FunPtr (GLint -> GLsizei -> Ptr GLint -> IO ()) -> GLint -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiintfloatfloatIOV :: FunPtr (GLint -> GLfloat -> GLfloat -> IO ()) -> GLint -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiintintintIOV :: FunPtr (GLint -> GLint -> GLint -> IO ()) -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiintfloatfloatfloatIOV :: FunPtr (GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiintintintintIOV :: FunPtr (GLint -> GLint -> GLint -> GLint -> IO ()) -> GLint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiintfloatfloatfloatfloatIOV :: FunPtr (GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiintintintintintIOV :: FunPtr (GLint -> GLint -> GLint -> GLint -> GLint -> IO ()) -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiintsizeibooleanPtrfloatIOV :: FunPtr (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()) -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintenumPtrintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumintPtruintIOV :: FunPtr (GLenum -> GLint -> Ptr GLuint -> IO ()) -> GLenum -> GLint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrcharPtrintIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLchar -> Ptr GLint -> IO ()) -> GLuint -> GLsizei -> Ptr GLchar -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiintPtrcharIOV :: FunPtr (GLint -> Ptr GLchar -> IO ()) -> GLint -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiintPtrcharsizeiPtrintPtrcharIOV :: FunPtr (GLint -> Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> IO ()) -> GLint -> Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiintPtrcharenumPtrintIOV :: FunPtr (GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> IO ()) -> GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiintPtrcharIOboolean :: FunPtr (GLint -> Ptr GLchar -> IO GLboolean) -> GLint -> Ptr GLchar -> IO GLboolean

foreign import ccall "dynamic"
	ffienumintPtrcharintPtrcharIOV :: FunPtr (GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO ()) -> GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffienumintptrsizeiptrbooleanIOV :: FunPtr (GLenum -> GLintptr -> GLsizeiptr -> GLboolean -> IO ()) -> GLenum -> GLintptr -> GLsizeiptr -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintintptrsizeiptrbooleanIOV :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> GLboolean -> IO ()) -> GLuint -> GLintptr -> GLsizeiptr -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintsizeisizeisizeibooleanIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumuintIOV :: FunPtr (GLenum -> GLenum -> GLuint -> IO ()) -> GLenum -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumenumuintintptrsizeiptrIOV :: FunPtr (GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ()) -> GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffienumintenumsizeiintsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintenumsizeisizeiintsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintenumsizeisizeisizeiintsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintsizeienumsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintintsizeisizeienumsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintsizeisizeisizeienumsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintPtrVIOV :: FunPtr (GLenum -> GLint -> Ptr () -> IO ()) -> GLenum -> GLint -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintbitfieldIOV :: FunPtr (GLuint -> GLbitfield -> IO ()) -> GLuint -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumsizeisizeibooleanIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumsizeisizeisizeibooleanIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumsizeiIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> GLsizei -> IO ()) -> GLenum -> GLsizei -> GLenum -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumsizeisizeisizeiIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintenumuintuintuintuintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtruint64IOV :: FunPtr (GLuint -> GLenum -> Ptr GLuint64 -> IO ()) -> GLuint -> GLenum -> Ptr GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> IO ()) -> GLenum -> GLuint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintsizeiIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLsizei -> IO ()) -> GLenum -> GLuint -> GLuint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiPtrdoubleIOV :: FunPtr (Ptr GLdouble -> IO ()) -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiPtrfloatIOV :: FunPtr (Ptr GLfloat -> IO ()) -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtruintenumPtrintIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLuint -> GLenum -> Ptr GLint -> IO ()) -> GLuint -> GLsizei -> Ptr GLuint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrcharIOuint :: FunPtr (GLuint -> Ptr GLchar -> IO GLuint) -> GLuint -> Ptr GLchar -> IO GLuint

foreign import ccall "dynamic"
	ffiuintsizeiPtrcharPtruintIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLchar -> Ptr GLuint -> IO ()) -> GLuint -> GLsizei -> Ptr GLchar -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrdoubleIOV :: FunPtr (GLuint -> GLenum -> Ptr GLdouble -> IO ()) -> GLuint -> GLenum -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintdoubleIOV :: FunPtr (GLuint -> GLdouble -> IO ()) -> GLuint -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrdoubleIOV :: FunPtr (GLuint -> Ptr GLdouble -> IO ()) -> GLuint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintdoubledoubleIOV :: FunPtr (GLuint -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintdoubledoubledoubleIOV :: FunPtr (GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintdoubledoubledoubledoubleIOV :: FunPtr (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumsizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintptrsizeiIOV :: FunPtr (GLuint -> GLuint -> GLintptr -> GLsizei -> IO ()) -> GLuint -> GLuint -> GLintptr -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumbooleanuintIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ()) -> GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumuintIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLuint -> IO ()) -> GLuint -> GLint -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintPtrbyteIOV :: FunPtr (GLint -> Ptr GLbyte -> IO ()) -> GLint -> Ptr GLbyte -> IO ()

foreign import ccall "dynamic"
	ffiintPtrdoubleIOV :: FunPtr (GLint -> Ptr GLdouble -> IO ()) -> GLint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintPtrfloatIOV :: FunPtr (GLint -> Ptr GLfloat -> IO ()) -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiintPtrintIOV :: FunPtr (GLint -> Ptr GLint -> IO ()) -> GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiintPtrshortIOV :: FunPtr (GLint -> Ptr GLshort -> IO ()) -> GLint -> Ptr GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiptrARBPtrVenumIOV :: FunPtr (GLenum -> GLsizeiptrARB -> Ptr () -> GLenum -> IO ()) -> GLenum -> GLsizeiptrARB -> Ptr () -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumintptrARBsizeiptrARBPtrVIOV :: FunPtr (GLenum -> GLintptrARB -> GLsizeiptrARB -> Ptr () -> IO ()) -> GLenum -> GLintptrARB -> GLsizeiptrARB -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumIOPtrV :: FunPtr (GLenum -> GLenum -> IO (Ptr ())) -> GLenum -> GLenum -> IO (Ptr ())

foreign import ccall "dynamic"
	ffienumIOboolean :: FunPtr (GLenum -> IO GLboolean) -> GLenum -> IO GLboolean

foreign import ccall "dynamic"
	ffiuintfloatIOV :: FunPtr (GLuint -> GLfloat -> IO ()) -> GLuint -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrfloatIOV :: FunPtr (GLuint -> Ptr GLfloat -> IO ()) -> GLuint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintshortIOV :: FunPtr (GLuint -> GLshort -> IO ()) -> GLuint -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrshortIOV :: FunPtr (GLuint -> Ptr GLshort -> IO ()) -> GLuint -> Ptr GLshort -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintshortshortIOV :: FunPtr (GLuint -> GLshort -> GLshort -> IO ()) -> GLuint -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintshortshortshortIOV :: FunPtr (GLuint -> GLshort -> GLshort -> GLshort -> IO ()) -> GLuint -> GLshort -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrbyteIOV :: FunPtr (GLuint -> Ptr GLbyte -> IO ()) -> GLuint -> Ptr GLbyte -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrintIOV :: FunPtr (GLuint -> Ptr GLint -> IO ()) -> GLuint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintubyteubyteubyteubyteIOV :: FunPtr (GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()) -> GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrubyteIOV :: FunPtr (GLuint -> Ptr GLubyte -> IO ()) -> GLuint -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiuintPtruintIOV :: FunPtr (GLuint -> Ptr GLuint -> IO ()) -> GLuint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrushortIOV :: FunPtr (GLuint -> Ptr GLushort -> IO ()) -> GLuint -> Ptr GLushort -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintshortshortshortshortIOV :: FunPtr (GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()) -> GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumbooleansizeiPtrVIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffihandleARBuintPtrcharARBIOV :: FunPtr (GLhandleARB -> GLuint -> Ptr GLcharARB -> IO ()) -> GLhandleARB -> GLuint -> Ptr GLcharARB -> IO ()

foreign import ccall "dynamic"
	ffienumPtruintIOV :: FunPtr (GLenum -> Ptr GLuint -> IO ()) -> GLenum -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtruintIOV :: FunPtr (GLenum -> GLenum -> Ptr GLuint -> IO ()) -> GLenum -> GLenum -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumbooleanuintIOV :: FunPtr (GLuint -> GLenum -> GLboolean -> GLuint -> IO ()) -> GLuint -> GLenum -> GLboolean -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumbooleanPtruintIOV :: FunPtr (GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ()) -> GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrdoubleIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLdouble -> IO ()) -> GLuint -> GLsizei -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrintIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLint -> IO ()) -> GLuint -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintintsizeisizeiIOV :: FunPtr (GLuint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrfloatIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffidoubledoubleIOV :: FunPtr (GLdouble -> GLdouble -> IO ()) -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiPtrintIOV :: FunPtr (Ptr GLint -> IO ()) -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffishortshortIOV :: FunPtr (GLshort -> GLshort -> IO ()) -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffiPtrshortIOV :: FunPtr (Ptr GLshort -> IO ()) -> Ptr GLshort -> IO ()

foreign import ccall "dynamic"
	ffidoubledoubledoubleIOV :: FunPtr (GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffishortshortshortIOV :: FunPtr (GLshort -> GLshort -> GLshort -> IO ()) -> GLshort -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiIOV :: FunPtr (GLenum -> GLsizei -> IO ()) -> GLenum -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintuintuintuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintuintuintuintuintuintuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintuintuintuintuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintuintuintuintuintuintuintuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintIOuint :: FunPtr (GLuint -> IO GLuint) -> GLuint -> IO GLuint

foreign import ccall "dynamic"
	ffiuintuintenumIOV :: FunPtr (GLuint -> GLuint -> GLenum -> IO ()) -> GLuint -> GLuint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintIOPtrV :: FunPtr (GLuint -> IO (Ptr ())) -> GLuint -> IO (Ptr ())

foreign import ccall "dynamic"
	ffienumenumintuintIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLuint -> IO ()) -> GLenum -> GLenum -> GLint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumenumIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLenum -> IO ()) -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumintenumsizeiuintuintIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()) -> GLenum -> GLint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrVenumIOuint :: FunPtr (GLsizei -> Ptr () -> GLenum -> IO GLuint) -> GLsizei -> Ptr () -> GLenum -> IO GLuint

foreign import ccall "dynamic"
	ffiuintuintsizeiPtrVenumIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr () -> GLenum -> IO ()) -> GLuint -> GLuint -> GLsizei -> Ptr () -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeiuintuintIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumbooleansizeiuintuintIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLuint -> GLuint -> IO ()) -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumbytebytebyteIOV :: FunPtr (GLenum -> GLbyte -> GLbyte -> GLbyte -> IO ()) -> GLenum -> GLbyte -> GLbyte -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffienumPtrbyteIOV :: FunPtr (GLenum -> Ptr GLbyte -> IO ()) -> GLenum -> Ptr GLbyte -> IO ()

foreign import ccall "dynamic"
	ffiuintintIOint :: FunPtr (GLuint -> GLint -> IO GLint) -> GLuint -> GLint -> IO GLint

foreign import ccall "dynamic"
	ffiuintintIOintptr :: FunPtr (GLuint -> GLint -> IO GLintptr) -> GLuint -> GLint -> IO GLintptr

foreign import ccall "dynamic"
	ffiintsizeiIOV :: FunPtr (GLint -> GLsizei -> IO ()) -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffibytebytebyteIOV :: FunPtr (GLbyte -> GLbyte -> GLbyte -> IO ()) -> GLbyte -> GLbyte -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffiPtrbyteIOV :: FunPtr (Ptr GLbyte -> IO ()) -> Ptr GLbyte -> IO ()

foreign import ccall "dynamic"
	ffienumintenumintintsizeiintIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()) -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumintenumintintsizeisizeiintIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()) -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintsizeiIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintintsizeisizeiIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintintintsizeisizeiIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtrsizeiPtrcharIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtrcharIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrcharIOV :: FunPtr (GLsizei -> Ptr GLchar -> IO ()) -> GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	fficlampdclampdIOV :: FunPtr (GLclampd -> GLclampd -> IO ()) -> GLclampd -> GLclampd -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeiptrsizeiptrenumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLsizeiptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLsizeiptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumsizeiintsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumsizeisizeiintsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumsizeisizeisizeiintsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintsizeienumsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintintsizeisizeienumsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintintintsizeisizeisizeienumsizeiPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumsizeiintsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumsizeisizeiintsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumsizeisizeisizeiintsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintsizeienumsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintsizeisizeienumsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintintsizeisizeisizeienumsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumintintsizeiintIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumintintsizeisizeiintIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintintintsizeiIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintintintintsizeisizeiIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintintintintintsizeisizeiIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumintintsizeiintIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumintintsizeisizeiintIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintintsizeiIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintintintsizeisizeiIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintintintintsizeisizeiIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtrbooleanIOV :: FunPtr (GLenum -> GLuint -> Ptr GLboolean -> IO ()) -> GLenum -> GLuint -> Ptr GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumintPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtrintIOV :: FunPtr (GLenum -> GLuint -> Ptr GLint -> IO ()) -> GLenum -> GLuint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumPtrfloatIOV :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumPtrdoubleIOV :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ()) -> GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumPtrfloatIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumintenumPtrintIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumPtruintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ()) -> GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintintptrsizeiptrPtrVIOV :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> Ptr () -> IO ()) -> GLuint -> GLintptr -> GLsizeiptr -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintPtruintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ()) -> GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintPtrdoubleIOV :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ()) -> GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintPtrfloatIOV :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ()) -> GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtrVIOV :: FunPtr (GLenum -> GLuint -> Ptr () -> IO ()) -> GLenum -> GLuint -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumPtrfloatIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintenumPtrintIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumPtruintIOV :: FunPtr (GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ()) -> GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumPtrfloatIOV :: FunPtr (GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()) -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintptrsizeiptrbitfieldIOPtrV :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr ())) -> GLuint -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr ())

foreign import ccall "dynamic"
	ffienumdoubledoubledoubledoubledoubledoubleIOV :: FunPtr (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumintenumsizeiPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumfloatIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLfloat -> IO ()) -> GLenum -> GLenum -> GLenum -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLint -> IO ()) -> GLenum -> GLenum -> GLenum -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumdoubleIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLdouble -> IO ()) -> GLenum -> GLenum -> GLenum -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintsizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintsizeisizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintsizeisizeisizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintsizeienumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintintsizeisizeienumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintintintintsizeisizeisizeienumenumPtrVIOV :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiptrPtrVenumIOV :: FunPtr (GLuint -> GLsizeiptr -> Ptr () -> GLenum -> IO ()) -> GLuint -> GLsizeiptr -> Ptr () -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiptrPtrVbitfieldIOV :: FunPtr (GLuint -> GLsizeiptr -> Ptr () -> GLbitfield -> IO ()) -> GLuint -> GLsizeiptr -> Ptr () -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintptrintptrsizeiptrIOV :: FunPtr (GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()) -> GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumuintintIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ()) -> GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumuintintintIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()) -> GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintintenumIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO ()) -> GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintdoubledoubledoubledoubleIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintintintintintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintuintuintuintuintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintsizeiPtrfloatIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintsizeiPtrintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintsizeiPtruintIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()) -> GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeisizeienumsizeisizeiIOV :: FunPtr (GLuint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumuintintptrsizeiptrIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ()) -> GLuint -> GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintsizeiintenumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintsizeisizeiintenumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintsizeisizeisizeiintenumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintintintintintsizeisizeisizeibooleanIOV :: FunPtr (GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumfloatIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLfloat -> IO ()) -> GLuint -> GLenum -> GLenum -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumenumintIOV :: FunPtr (GLuint -> GLenum -> GLenum -> GLint -> IO ()) -> GLuint -> GLenum -> GLenum -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeienumsizeiIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeienumsizeisizeiIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeienumsizeisizeibooleanIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeienumsizeisizeisizeiIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeienumsizeisizeisizeibooleanIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintsizeienumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintsizeisizeienumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumintintintintsizeisizeisizeienumenumPtrVIOV :: FunPtr (GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintintenumsizeiintptrIOV :: FunPtr (GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()) -> GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintuintsizeiintptrIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> GLintptr -> IO ()) -> GLuint -> GLuint -> GLsizei -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumsizeiintptrIOV :: FunPtr (GLuint -> GLuint -> GLenum -> GLsizei -> GLintptr -> IO ()) -> GLuint -> GLuint -> GLenum -> GLsizei -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumintenumsizeiintptrIOV :: FunPtr (GLuint -> GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()) -> GLuint -> GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintintenumsizeiintptrIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()) -> GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintintenumbooleansizeiintptrIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> IO ()) -> GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffiuintbooleanbooleanbooleanbooleanIOV :: FunPtr (GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()) -> GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintsizeienumPtrVIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffidoubleIOV :: FunPtr (GLdouble -> IO ()) -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtrfloatIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintuintPtrcharIOV :: FunPtr (GLuint -> GLuint -> Ptr GLchar -> IO ()) -> GLuint -> GLuint -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintintPtruintIOV :: FunPtr (GLuint -> GLint -> Ptr GLuint -> IO ()) -> GLuint -> GLint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintuintIOV :: FunPtr (GLint -> GLuint -> IO ()) -> GLint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintsizeiPtruintIOV :: FunPtr (GLint -> GLsizei -> Ptr GLuint -> IO ()) -> GLint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintuintuintIOV :: FunPtr (GLint -> GLuint -> GLuint -> IO ()) -> GLint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintuintuintuintIOV :: FunPtr (GLint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiintuintuintuintuintIOV :: FunPtr (GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumclampfIOV :: FunPtr (GLenum -> GLclampf -> IO ()) -> GLenum -> GLclampf -> IO ()

foreign import ccall "dynamic"
	ffienumPtrsizeienumPtrVsizeiIOV :: FunPtr (GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> IO ()) -> GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> IO ()

foreign import ccall "dynamic"
	fficlampfbooleanIOV :: FunPtr (GLclampf -> GLboolean -> IO ()) -> GLclampf -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumuintintsizeiIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLsizei -> IO ()) -> GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffiintPtrenumPtrintIOV :: FunPtr (GLint -> Ptr GLenum -> Ptr GLint -> IO ()) -> GLint -> Ptr GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintbooleanIOV :: FunPtr (GLuint -> GLboolean -> IO ()) -> GLuint -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiubyteubyteubyteIOV :: FunPtr (GLubyte -> GLubyte -> GLubyte -> IO ()) -> GLubyte -> GLubyte -> GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiPtrubyteIOV :: FunPtr (Ptr GLubyte -> IO ()) -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiPtruintIOV :: FunPtr (Ptr GLuint -> IO ()) -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiushortushortushortIOV :: FunPtr (GLushort -> GLushort -> GLushort -> IO ()) -> GLushort -> GLushort -> GLushort -> IO ()

foreign import ccall "dynamic"
	ffiPtrushortIOV :: FunPtr (Ptr GLushort -> IO ()) -> Ptr GLushort -> IO ()

foreign import ccall "dynamic"
	ffienumPtrcharIOuint :: FunPtr (GLenum -> Ptr GLchar -> IO GLuint) -> GLenum -> Ptr GLchar -> IO GLuint

foreign import ccall "dynamic"
	ffiuintuintintbooleanintenumintIOV :: FunPtr (GLuint -> GLuint -> GLint -> GLboolean -> GLint -> GLenum -> GLint -> IO ()) -> GLuint -> GLuint -> GLint -> GLboolean -> GLint -> GLenum -> GLint -> IO ()

foreign import ccall "dynamic"
	ffisizeiuintIOV :: FunPtr (GLsizei -> GLuint -> IO ()) -> GLsizei -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumintintsizeienumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintintsizeisizeienumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintenumsizeisizeisizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintsizeisizeisizeienumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintuintIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtruintPtrbooleanIOboolean :: FunPtr (GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean) -> GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean

foreign import ccall "dynamic"
	ffisizeiPtruintPtrclampfIOV :: FunPtr (GLsizei -> Ptr GLuint -> Ptr GLclampf -> IO ()) -> GLsizei -> Ptr GLuint -> Ptr GLclampf -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintintptrIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLintptr -> IO ()) -> GLenum -> GLuint -> GLuint -> GLintptr -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintintptrsizeiptrIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ()) -> GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffiuintuintsizeiPtrsizeiPtrsizeiPtrenumPtrcharIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ()) -> GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrcharenumIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLchar -> GLenum -> IO ()) -> GLuint -> GLsizei -> Ptr GLchar -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiintenumsizeisizeiPtrVIOV :: FunPtr (GLint -> GLenum -> GLsizei -> GLsizei -> Ptr () -> IO ()) -> GLint -> GLenum -> GLsizei -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffisizeisizeiPtrbooleanIOV :: FunPtr (GLsizei -> GLsizei -> Ptr GLboolean -> IO ()) -> GLsizei -> GLsizei -> Ptr GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumsizeisizeiPtrVIOV :: FunPtr (GLenum -> GLsizei -> GLsizei -> Ptr () -> IO ()) -> GLenum -> GLsizei -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumIOuint :: FunPtr (GLenum -> GLenum -> IO GLuint) -> GLenum -> GLenum -> IO GLuint

foreign import ccall "dynamic"
	ffienumIOuint :: FunPtr (GLenum -> IO GLuint) -> GLenum -> IO GLuint

foreign import ccall "dynamic"
	ffienumenumenumIOuint :: FunPtr (GLenum -> GLenum -> GLenum -> IO GLuint) -> GLenum -> GLenum -> GLenum -> IO GLuint

foreign import ccall "dynamic"
	ffienumenumenumuintIOuint :: FunPtr (GLenum -> GLenum -> GLenum -> GLuint -> IO GLuint) -> GLenum -> GLenum -> GLenum -> GLuint -> IO GLuint

foreign import ccall "dynamic"
	ffiuintenumPtrbooleanIOV :: FunPtr (GLuint -> GLenum -> Ptr GLboolean -> IO ()) -> GLuint -> GLenum -> Ptr GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintuintuintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumenumenumenumIOV :: FunPtr (GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()) -> GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintPtrVIOV :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLuint -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintptrbitfieldIOsync :: FunPtr (GLenum -> GLintptr -> GLbitfield -> IO GLsync) -> GLenum -> GLintptr -> GLbitfield -> IO GLsync

foreign import ccall "dynamic"
	ffiPtrenumPtrintPtrsizeisizeiintIOV :: FunPtr (Ptr GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> GLint -> IO ()) -> Ptr GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiPtrenumPtrsizeienumPtrVsizeiintIOV :: FunPtr (Ptr GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> IO ()) -> Ptr GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiintenumintPtrVintIOV :: FunPtr (GLint -> GLenum -> GLint -> Ptr () -> GLint -> IO ()) -> GLint -> GLenum -> GLint -> Ptr () -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiintPtrbooleanintIOV :: FunPtr (GLint -> Ptr GLboolean -> GLint -> IO ()) -> GLint -> Ptr GLboolean -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumintPtrVintIOV :: FunPtr (GLenum -> GLint -> Ptr () -> GLint -> IO ()) -> GLenum -> GLint -> Ptr () -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumPtrfixedIOV :: FunPtr (GLenum -> Ptr GLfixed -> IO ()) -> GLenum -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffiuintintbitfieldPtrintPtrenumIOPtrV :: FunPtr (GLuint -> GLint -> GLbitfield -> Ptr GLint -> Ptr GLenum -> IO (Ptr ())) -> GLuint -> GLint -> GLbitfield -> Ptr GLint -> Ptr GLenum -> IO (Ptr ())

foreign import ccall "dynamic"
	ffiintenumPtrVIOV :: FunPtr (GLint -> GLenum -> Ptr () -> IO ()) -> GLint -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintPtrcharuintPtrcharPtruintPtruintPtruintPtruintPtruint64IOV :: FunPtr (GLuint -> GLuint -> GLuint -> Ptr GLchar -> GLuint -> Ptr GLchar -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint64 -> IO ()) -> GLuint -> GLuint -> GLuint -> Ptr GLchar -> GLuint -> Ptr GLchar -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint64 -> IO ()

foreign import ccall "dynamic"
	ffiuintuintsizeiPtrVPtruintIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr () -> Ptr GLuint -> IO ()) -> GLuint -> GLuint -> GLsizei -> Ptr () -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiPtrcharPtruintIOV :: FunPtr (Ptr GLchar -> Ptr GLuint -> IO ()) -> Ptr GLchar -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintPtrcharPtruintPtruintPtruintPtruintIOV :: FunPtr (GLuint -> GLuint -> Ptr GLchar -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> IO ()) -> GLuint -> GLuint -> Ptr GLchar -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffiDEBUGPROCPtrVIOV :: FunPtr (GLDEBUGPROC -> Ptr () -> IO ()) -> GLDEBUGPROC -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiDEBUGPROCKHRPtrVIOV :: FunPtr (GLDEBUGPROCKHR -> Ptr () -> IO ()) -> GLDEBUGPROCKHR -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiPtrVsizeiPtrsizeiPtrcharIOV :: FunPtr (Ptr () -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()) -> Ptr () -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiPtrVsizeiPtrcharIOV :: FunPtr (Ptr () -> GLsizei -> Ptr GLchar -> IO ()) -> Ptr () -> GLsizei -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffidoubledoubledoubledoubleIOV :: FunPtr (GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffishortshortshortshortIOV :: FunPtr (GLshort -> GLshort -> GLshort -> GLshort -> IO ()) -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumPtrVsizeisizeiintIOV :: FunPtr (GLenum -> Ptr () -> GLsizei -> GLsizei -> GLint -> IO ()) -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrVsizeisizeiintIOV :: FunPtr (GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLint -> IO ()) -> GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumPtrVsizeisizeisizeiintIOV :: FunPtr (GLenum -> Ptr () -> GLsizei -> GLsizei -> GLsizei -> GLint -> IO ()) -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrVsizeisizeisizeiintIOV :: FunPtr (GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLsizei -> GLint -> IO ()) -> GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLsizei -> GLint -> IO ()

foreign import ccall "dynamic"
	ffibooleanIOV :: FunPtr (GLboolean -> IO ()) -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintuintfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumuintenumPtrfloatIOV :: FunPtr (GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumuintenumsizeisizeibooleanPtrVIOV :: FunPtr (GLenum -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLboolean -> Ptr () -> IO ()) -> GLenum -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLboolean -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumuintenumsizeisizeiintintbooleanPtrVIOV :: FunPtr (GLenum -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLint -> GLboolean -> Ptr () -> IO ()) -> GLenum -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLint -> GLboolean -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrubytePtrdoubleIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ()) -> GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrubytePtrfloatIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ()) -> GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrubytedoubledoubledoubledoubleIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLubyte -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLuint -> GLsizei -> Ptr GLubyte -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrubytefloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLubyte -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLsizei -> Ptr GLubyte -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrfloatIOV :: FunPtr (GLsizei -> Ptr GLfloat -> IO ()) -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumsizeisizeienumsizeisizeiIOV :: FunPtr (GLenum -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()) -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintintintintintIOV :: FunPtr (GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()) -> GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtrintIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffihalfNVhalfNVhalfNVIOV :: FunPtr (GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()) -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffiPtrhalfNVIOV :: FunPtr (Ptr GLhalfNV -> IO ()) -> Ptr GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffihalfNVhalfNVhalfNVhalfNVIOV :: FunPtr (GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()) -> GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffihalfNVIOV :: FunPtr (GLhalfNV -> IO ()) -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffienumhalfNVIOV :: FunPtr (GLenum -> GLhalfNV -> IO ()) -> GLenum -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffienumPtrhalfNVIOV :: FunPtr (GLenum -> Ptr GLhalfNV -> IO ()) -> GLenum -> Ptr GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffienumhalfNVhalfNVIOV :: FunPtr (GLenum -> GLhalfNV -> GLhalfNV -> IO ()) -> GLenum -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffienumhalfNVhalfNVhalfNVIOV :: FunPtr (GLenum -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()) -> GLenum -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffienumhalfNVhalfNVhalfNVhalfNVIOV :: FunPtr (GLenum -> GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()) -> GLenum -> GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffihalfNVhalfNVIOV :: FunPtr (GLhalfNV -> GLhalfNV -> IO ()) -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffiuinthalfNVIOV :: FunPtr (GLuint -> GLhalfNV -> IO ()) -> GLuint -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrhalfNVIOV :: FunPtr (GLuint -> Ptr GLhalfNV -> IO ()) -> GLuint -> Ptr GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffiuinthalfNVhalfNVIOV :: FunPtr (GLuint -> GLhalfNV -> GLhalfNV -> IO ()) -> GLuint -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffiuinthalfNVhalfNVhalfNVIOV :: FunPtr (GLuint -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()) -> GLuint -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffiuinthalfNVhalfNVhalfNVhalfNVIOV :: FunPtr (GLuint -> GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()) -> GLuint -> GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrhalfNVIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLhalfNV -> IO ()) -> GLuint -> GLsizei -> Ptr GLhalfNV -> IO ()

foreign import ccall "dynamic"
	ffienumenumsizeienumsizeiPtrintIOV :: FunPtr (GLenum -> GLenum -> GLsizei -> GLenum -> GLsizei -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> GLsizei -> GLenum -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintsizeiPtrintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintsizeiPtruintIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> IO ()) -> GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumuintuintsizeiPtrfloatIOV :: FunPtr (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrVuintenumenumPtrfloatIOV :: FunPtr (GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()) -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiIOV :: FunPtr (GLuint -> GLsizei -> IO ()) -> GLuint -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffisizeiIOuint :: FunPtr (GLsizei -> IO GLuint) -> GLsizei -> IO GLuint

foreign import ccall "dynamic"
	ffiuintsizeisizeiIOfloat :: FunPtr (GLuint -> GLsizei -> GLsizei -> IO GLfloat) -> GLuint -> GLsizei -> GLsizei -> IO GLfloat

foreign import ccall "dynamic"
	ffibitfielduintsizeisizeiPtrfloatIOV :: FunPtr (GLbitfield -> GLuint -> GLsizei -> GLsizei -> Ptr GLfloat -> IO ()) -> GLbitfield -> GLuint -> GLsizei -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffibitfieldsizeienumPtrVuintsizeiPtrfloatIOV :: FunPtr (GLbitfield -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLbitfield -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumsizeienumPtrVuintfloatfloatenumPtrfloatIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLfloat -> GLfloat -> GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLfloat -> GLfloat -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintsizeiPtrenumsizeiPtrsizeiPtrfloatIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLfloat -> IO ()) -> GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintfloatIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLfloat -> IO ()) -> GLuint -> GLuint -> GLuint -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintuintfloatfloatIOboolean :: FunPtr (GLuint -> GLuint -> GLfloat -> GLfloat -> IO GLboolean) -> GLuint -> GLuint -> GLfloat -> GLfloat -> IO GLboolean

foreign import ccall "dynamic"
	ffiuintfloatfloatIOboolean :: FunPtr (GLuint -> GLfloat -> GLfloat -> IO GLboolean) -> GLuint -> GLfloat -> GLfloat -> IO GLboolean

foreign import ccall "dynamic"
	ffiuintsizeiPtrubytesizeienumPtrVIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeienumPtrVIOV :: FunPtr (GLuint -> GLsizei -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLsizei -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrVbitfielduintsizeiuintfloatIOenum :: FunPtr (GLuint -> GLenum -> Ptr () -> GLbitfield -> GLuint -> GLsizei -> GLuint -> GLfloat -> IO GLenum) -> GLuint -> GLenum -> Ptr () -> GLbitfield -> GLuint -> GLsizei -> GLuint -> GLfloat -> IO GLenum

foreign import ccall "dynamic"
	ffienumPtrVbitfielduintfloatuintIOenum :: FunPtr (GLenum -> Ptr () -> GLbitfield -> GLuint -> GLfloat -> GLuint -> IO GLenum) -> GLenum -> Ptr () -> GLbitfield -> GLuint -> GLfloat -> GLuint -> IO GLenum

foreign import ccall "dynamic"
	ffiuintenumPtrVbitfielduintsizeienumuintfloatIOV :: FunPtr (GLuint -> GLenum -> Ptr () -> GLbitfield -> GLuint -> GLsizei -> GLenum -> GLuint -> GLfloat -> IO ()) -> GLuint -> GLenum -> Ptr () -> GLbitfield -> GLuint -> GLsizei -> GLenum -> GLuint -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrVbitfieldsizeienumPtrVenumuintfloatIOV :: FunPtr (GLuint -> GLenum -> Ptr () -> GLbitfield -> GLsizei -> GLenum -> Ptr () -> GLenum -> GLuint -> GLfloat -> IO ()) -> GLuint -> GLenum -> Ptr () -> GLbitfield -> GLsizei -> GLenum -> Ptr () -> GLenum -> GLuint -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeiptrPtrVsizeiuintsizeiuintfloatIOenum :: FunPtr (GLuint -> GLenum -> GLsizeiptr -> Ptr () -> GLsizei -> GLuint -> GLsizei -> GLuint -> GLfloat -> IO GLenum) -> GLuint -> GLenum -> GLsizeiptr -> Ptr () -> GLsizei -> GLuint -> GLsizei -> GLuint -> GLfloat -> IO GLenum

foreign import ccall "dynamic"
	ffienumintuintIOV :: FunPtr (GLenum -> GLint -> GLuint -> IO ()) -> GLenum -> GLint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeiPtrVIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> Ptr () -> IO ()) -> GLuint -> GLenum -> GLsizei -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeisizeisizeiPtrubytesizeienumPtrVIOV :: FunPtr (GLuint -> GLsizei -> GLsizei -> GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLsizei -> GLsizei -> GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeisizeienumPtrVIOV :: FunPtr (GLuint -> GLsizei -> GLsizei -> GLenum -> Ptr () -> IO ()) -> GLuint -> GLsizei -> GLsizei -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumenumintPtrfloatIOV :: FunPtr (GLenum -> GLenum -> GLint -> Ptr GLfloat -> IO ()) -> GLenum -> GLenum -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeisizeifloatPtrfloatPtrfloatPtrfloatPtrfloatIOboolean :: FunPtr (GLuint -> GLsizei -> GLsizei -> GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO GLboolean) -> GLuint -> GLsizei -> GLsizei -> GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO GLboolean

foreign import ccall "dynamic"
	ffiuintintenumintPtrfloatIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLint -> Ptr GLfloat -> IO ()) -> GLuint -> GLint -> GLenum -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrVuintenumuintenumPtrfloatIOV :: FunPtr (GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()) -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrVuintintuintenumPtrfloatIOV :: FunPtr (GLsizei -> GLenum -> Ptr () -> GLuint -> GLint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()) -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrVuintenumuintenumenumPtrfloatIOV :: FunPtr (GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()) -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumuintenumIOV :: FunPtr (GLuint -> GLenum -> GLuint -> GLenum -> IO ()) -> GLuint -> GLenum -> GLuint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrVuintintuintenumenumPtrfloatIOV :: FunPtr (GLsizei -> GLenum -> Ptr () -> GLuint -> GLint -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()) -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLint -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintuintenumIOV :: FunPtr (GLuint -> GLint -> GLuint -> GLenum -> IO ()) -> GLuint -> GLint -> GLuint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumPtrfloatIOV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()) -> GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtruintPtrfloatIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ()) -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrint64EXTIOV :: FunPtr (GLuint -> GLenum -> Ptr GLint64EXT -> IO ()) -> GLuint -> GLenum -> Ptr GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintuint64EXTuintuintenumenumuintenumuintenumuintenumuintIOV :: FunPtr (GLuint -> GLuint64EXT -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> IO ()) -> GLuint -> GLuint64EXT -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuint64EXTuintuintenumenumuintuintenumuintuintIOV :: FunPtr (GLuint -> GLuint64EXT -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> IO ()) -> GLuint -> GLuint64EXT -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumenumenumenumIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()) -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumenumenumenumenumbooleanbooleanbooleanIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLboolean -> GLboolean -> GLboolean -> IO ()) -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLboolean -> GLboolean -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumenumPtrfloatIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumenumPtrintIOV :: FunPtr (GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()) -> GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintsizeiPtrfloatIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()) -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtruint64EXTIOV :: FunPtr (GLenum -> GLenum -> Ptr GLuint64EXT -> IO ()) -> GLenum -> GLenum -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffienumPtruint64EXTIOV :: FunPtr (GLenum -> Ptr GLuint64EXT -> IO ()) -> GLenum -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffienumsizeisizeiintsizeisizeibooleanIOV :: FunPtr (GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumsizeisizeiintsizeisizeisizeibooleanIOV :: FunPtr (GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeisizeiintsizeisizeibooleanIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeiintsizeisizeibooleanIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeisizeiintsizeisizeisizeibooleanIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumsizeiintsizeisizeisizeibooleanIOV :: FunPtr (GLuint -> GLenum -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()) -> GLuint -> GLenum -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrcharIOV :: FunPtr (GLuint -> Ptr GLchar -> IO ()) -> GLuint -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintuintPtrintIOV :: FunPtr (GLuint -> GLuint -> Ptr GLint -> IO ()) -> GLuint -> GLuint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrintenumIOV :: FunPtr (GLsizei -> Ptr GLint -> GLenum -> IO ()) -> GLsizei -> Ptr GLint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtrintsizeiPtrintenumIOV :: FunPtr (GLsizei -> Ptr GLint -> GLsizei -> Ptr GLint -> GLenum -> IO ()) -> GLsizei -> Ptr GLint -> GLsizei -> Ptr GLint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrintenumIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLint -> GLenum -> IO ()) -> GLuint -> GLsizei -> Ptr GLint -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffivdpauSurfaceNVenumsizeiPtrsizeiPtrintIOV :: FunPtr (GLvdpauSurfaceNV -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()) -> GLvdpauSurfaceNV -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiPtrVPtrVIOV :: FunPtr (Ptr () -> Ptr () -> IO ()) -> Ptr () -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffivdpauSurfaceNVIOboolean :: FunPtr (GLvdpauSurfaceNV -> IO GLboolean) -> GLvdpauSurfaceNV -> IO GLboolean

foreign import ccall "dynamic"
	ffisizeiPtrvdpauSurfaceNVIOV :: FunPtr (GLsizei -> Ptr GLvdpauSurfaceNV -> IO ()) -> GLsizei -> Ptr GLvdpauSurfaceNV -> IO ()

foreign import ccall "dynamic"
	ffiPtrVenumsizeiPtruintIOvdpauSurfaceNV :: FunPtr (Ptr () -> GLenum -> GLsizei -> Ptr GLuint -> IO GLvdpauSurfaceNV) -> Ptr () -> GLenum -> GLsizei -> Ptr GLuint -> IO GLvdpauSurfaceNV

foreign import ccall "dynamic"
	ffivdpauSurfaceNVenumIOV :: FunPtr (GLvdpauSurfaceNV -> GLenum -> IO ()) -> GLvdpauSurfaceNV -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffivdpauSurfaceNVIOV :: FunPtr (GLvdpauSurfaceNV -> IO ()) -> GLvdpauSurfaceNV -> IO ()

foreign import ccall "dynamic"
	ffiuintint64EXTIOV :: FunPtr (GLuint -> GLint64EXT -> IO ()) -> GLuint -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintPtrint64EXTIOV :: FunPtr (GLuint -> Ptr GLint64EXT -> IO ()) -> GLuint -> Ptr GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintint64EXTint64EXTIOV :: FunPtr (GLuint -> GLint64EXT -> GLint64EXT -> IO ()) -> GLuint -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintuint64EXTuint64EXTIOV :: FunPtr (GLuint -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLuint -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintint64EXTint64EXTint64EXTIOV :: FunPtr (GLuint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()) -> GLuint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintuint64EXTuint64EXTuint64EXTIOV :: FunPtr (GLuint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLuint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintint64EXTint64EXTint64EXTint64EXTIOV :: FunPtr (GLuint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()) -> GLuint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintuint64EXTuint64EXTuint64EXTuint64EXTIOV :: FunPtr (GLuint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()) -> GLuint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumsizeiIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLsizei -> IO ()) -> GLuint -> GLint -> GLenum -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintuint64EXTsizeiptrIOV :: FunPtr (GLenum -> GLuint -> GLuint64EXT -> GLsizeiptr -> IO ()) -> GLenum -> GLuint -> GLuint64EXT -> GLsizeiptr -> IO ()

foreign import ccall "dynamic"
	ffiintenumsizeiIOV :: FunPtr (GLint -> GLenum -> GLsizei -> IO ()) -> GLint -> GLenum -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffisizeiIOV :: FunPtr (GLsizei -> IO ()) -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtruint64EXTIOV :: FunPtr (GLenum -> GLuint -> Ptr GLuint64EXT -> IO ()) -> GLenum -> GLuint -> Ptr GLuint64EXT -> IO ()

foreign import ccall "dynamic"
	ffiuintintenumbooleansizeiIOV :: FunPtr (GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> IO ()) -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumuintenumPtrdoubleIOV :: FunPtr (GLenum -> GLuint -> GLenum -> Ptr GLdouble -> IO ()) -> GLenum -> GLuint -> GLenum -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrubyteIOV :: FunPtr (GLuint -> GLenum -> Ptr GLubyte -> IO ()) -> GLuint -> GLenum -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtrubyteIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffienumuintsizeiPtrdoubleIOV :: FunPtr (GLenum -> GLuint -> GLsizei -> Ptr GLdouble -> IO ()) -> GLenum -> GLuint -> GLsizei -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumuintenumenumIOV :: FunPtr (GLenum -> GLuint -> GLenum -> GLenum -> IO ()) -> GLenum -> GLuint -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrshortIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLshort -> IO ()) -> GLuint -> GLsizei -> Ptr GLshort -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrubyteIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLubyte -> IO ()) -> GLuint -> GLsizei -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintuintuintIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()) -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumintptrARBIOV :: FunPtr (GLuint -> GLuint -> GLenum -> GLintptrARB -> IO ()) -> GLuint -> GLuint -> GLenum -> GLintptrARB -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumenumuintIOV :: FunPtr (GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> IO ()) -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintenumPtrdoubleIOV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ()) -> GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiuintPtruintPtruint64EXTIOenum :: FunPtr (GLuint -> Ptr GLuint -> Ptr GLuint64EXT -> IO GLenum) -> GLuint -> Ptr GLuint -> Ptr GLuint64EXT -> IO GLenum

foreign import ccall "dynamic"
	ffienumbyteIOV :: FunPtr (GLenum -> GLbyte -> IO ()) -> GLenum -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffienumbytebyteIOV :: FunPtr (GLenum -> GLbyte -> GLbyte -> IO ()) -> GLenum -> GLbyte -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffienumbytebytebytebyteIOV :: FunPtr (GLenum -> GLbyte -> GLbyte -> GLbyte -> GLbyte -> IO ()) -> GLenum -> GLbyte -> GLbyte -> GLbyte -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffibyteIOV :: FunPtr (GLbyte -> IO ()) -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffibytebyteIOV :: FunPtr (GLbyte -> GLbyte -> IO ()) -> GLbyte -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffibytebytebytebyteIOV :: FunPtr (GLbyte -> GLbyte -> GLbyte -> GLbyte -> IO ()) -> GLbyte -> GLbyte -> GLbyte -> GLbyte -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffishortshortshortshortshortIOV :: FunPtr (GLshort -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()) -> GLshort -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffifixedfixedfixedfixedfixedIOV :: FunPtr (GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()) -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffiPtrfixedIOV :: FunPtr (Ptr GLfixed -> IO ()) -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumeglImageOESIOV :: FunPtr (GLenum -> GLeglImageOES -> IO ()) -> GLenum -> GLeglImageOES -> IO ()

foreign import ccall "dynamic"
	ffienumfixedIOV :: FunPtr (GLenum -> GLfixed -> IO ()) -> GLenum -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffisizeisizeifixedfixedfixedfixedPtrubyteIOV :: FunPtr (GLsizei -> GLsizei -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> Ptr GLubyte -> IO ()) -> GLsizei -> GLsizei -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffifixedfixedfixedfixedIOV :: FunPtr (GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()) -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffifixedIOV :: FunPtr (GLfixed -> IO ()) -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffifixedfixedfixedIOV :: FunPtr (GLfixed -> GLfixed -> GLfixed -> IO ()) -> GLfixed -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumenumfixedIOV :: FunPtr (GLenum -> GLenum -> GLfixed -> IO ()) -> GLenum -> GLenum -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrfixedIOV :: FunPtr (GLenum -> GLenum -> Ptr GLfixed -> IO ()) -> GLenum -> GLenum -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffifixedfixedIOV :: FunPtr (GLfixed -> GLfixed -> IO ()) -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrfixedIOV :: FunPtr (GLsizei -> GLenum -> Ptr GLfixed -> IO ()) -> GLsizei -> GLenum -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffifixedfixedfixedfixedfixedfixedIOV :: FunPtr (GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()) -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumintPtrfixedIOV :: FunPtr (GLenum -> GLint -> Ptr GLfixed -> IO ()) -> GLenum -> GLint -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumintenumPtrfixedIOV :: FunPtr (GLenum -> GLint -> GLenum -> Ptr GLfixed -> IO ()) -> GLenum -> GLint -> GLenum -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumfixedfixedintintfixedIOV :: FunPtr (GLenum -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> IO ()) -> GLenum -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumfixedfixedintintfixedfixedintintfixedIOV :: FunPtr (GLenum -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> IO ()) -> GLenum -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffiintfixedfixedIOV :: FunPtr (GLint -> GLfixed -> GLfixed -> IO ()) -> GLint -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffiintfixedfixedfixedfixedIOV :: FunPtr (GLint -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()) -> GLint -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumfixedfixedIOV :: FunPtr (GLenum -> GLfixed -> GLfixed -> IO ()) -> GLenum -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumfixedfixedfixedIOV :: FunPtr (GLenum -> GLfixed -> GLfixed -> GLfixed -> IO ()) -> GLenum -> GLfixed -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffienumfixedfixedfixedfixedIOV :: FunPtr (GLenum -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()) -> GLenum -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtruintPtrfixedIOV :: FunPtr (GLsizei -> Ptr GLuint -> Ptr GLfixed -> IO ()) -> GLsizei -> Ptr GLuint -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffiPtrfixedPtrfixedIOV :: FunPtr (Ptr GLfixed -> Ptr GLfixed -> IO ()) -> Ptr GLfixed -> Ptr GLfixed -> IO ()

foreign import ccall "dynamic"
	ffifixedbooleanIOV :: FunPtr (GLfixed -> GLboolean -> IO ()) -> GLfixed -> GLboolean -> IO ()

foreign import ccall "dynamic"
	fficlampxbooleanIOV :: FunPtr (GLclampx -> GLboolean -> IO ()) -> GLclampx -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrVintIOV :: FunPtr (GLuint -> GLenum -> Ptr () -> GLint -> IO ()) -> GLuint -> GLenum -> Ptr () -> GLint -> IO ()

foreign import ccall "dynamic"
	ffiPtrfixedPtrintIObitfield :: FunPtr (Ptr GLfixed -> Ptr GLint -> IO GLbitfield) -> Ptr GLfixed -> Ptr GLint -> IO GLbitfield

foreign import ccall "dynamic"
	fficlampfIOV :: FunPtr (GLclampf -> IO ()) -> GLclampf -> IO ()

foreign import ccall "dynamic"
	fficlampfclampfIOV :: FunPtr (GLclampf -> GLclampf -> IO ()) -> GLclampf -> GLclampf -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtruintintPtrintIOV :: FunPtr (Ptr GLuint -> GLint -> Ptr GLint -> IO ()) -> Ptr GLuint -> GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintenumPtrcharPtrintIOV :: FunPtr (GLuint -> GLenum -> Ptr GLchar -> Ptr GLint -> IO ()) -> GLuint -> GLenum -> Ptr GLchar -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintuintuintuintbitfieldIOV :: FunPtr (GLuint -> GLuint -> GLuint -> GLuint -> GLbitfield -> IO ()) -> GLuint -> GLuint -> GLuint -> GLuint -> GLbitfield -> IO ()

foreign import ccall "dynamic"
	ffienumintenumsizeisizeisizeisizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintintintintsizeisizeisizeisizeienumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffibooleanbooleanbooleanbooleanIOV :: FunPtr (GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()) -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()

foreign import ccall "dynamic"
	ffiPtruintIOint :: FunPtr (Ptr GLuint -> IO GLint) -> Ptr GLuint -> IO GLint

foreign import ccall "dynamic"
	ffiIOint :: FunPtr (IO GLint) -> IO GLint

foreign import ccall "dynamic"
	ffisizeiPtrintIOV :: FunPtr (GLsizei -> Ptr GLint -> IO ()) -> GLsizei -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiPtrintIOint :: FunPtr (Ptr GLint -> IO GLint) -> Ptr GLint -> IO GLint

foreign import ccall "dynamic"
	ffienumdoubledoubleintintdoubledoubleintintdoubledoubleintintPtrdoubleIOV :: FunPtr (GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()) -> GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumfloatfloatintintfloatfloatintintfloatfloatintintPtrfloatIOV :: FunPtr (GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()) -> GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffishortIOV :: FunPtr (GLshort -> IO ()) -> GLshort -> IO ()

foreign import ccall "dynamic"
	ffiubyteIOV :: FunPtr (GLubyte -> IO ()) -> GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiushortIOV :: FunPtr (GLushort -> IO ()) -> GLushort -> IO ()

foreign import ccall "dynamic"
	ffiPtrfloatPtrfloatIOV :: FunPtr (Ptr GLfloat -> Ptr GLfloat -> IO ()) -> Ptr GLfloat -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtrfloatPtrfloatPtrfloatIOV :: FunPtr (Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()) -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiubyteubyteubyteubytefloatfloatIOV :: FunPtr (GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> IO ()) -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtrubytePtrfloatIOV :: FunPtr (Ptr GLubyte -> Ptr GLfloat -> IO ()) -> Ptr GLubyte -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiubyteubyteubyteubytefloatfloatfloatIOV :: FunPtr (GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtruintPtrfloatPtrfloatIOV :: FunPtr (Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> IO ()) -> Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtruintPtrfloatPtrfloatPtrfloatIOV :: FunPtr (Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()) -> Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintubyteubyteubyteubytefloatfloatfloatIOV :: FunPtr (GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtruintPtrubytePtrfloatIOV :: FunPtr (Ptr GLuint -> Ptr GLubyte -> Ptr GLfloat -> IO ()) -> Ptr GLuint -> Ptr GLubyte -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtruintPtrfloatPtrfloatPtrfloatPtrfloatIOV :: FunPtr (Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()) -> Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintfloatfloatfloatfloatfloatIOV :: FunPtr (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtruintPtrfloatIOV :: FunPtr (Ptr GLuint -> Ptr GLfloat -> IO ()) -> Ptr GLuint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtrfloatPtrfloatPtrfloatPtrfloatIOV :: FunPtr (Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()) -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatubyteubyteubyteubytefloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtrfloatPtrubytePtrfloatIOV :: FunPtr (Ptr GLfloat -> Ptr GLubyte -> Ptr GLfloat -> IO ()) -> Ptr GLfloat -> Ptr GLubyte -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffifloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatfloatIOV :: FunPtr (GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()) -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffisizeisizeifloatfloatfloatfloatPtrubyteIOV :: FunPtr (GLsizei -> GLsizei -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Ptr GLubyte -> IO ()) -> GLsizei -> GLsizei -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Ptr GLubyte -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrVIOV :: FunPtr (GLsizei -> GLenum -> Ptr () -> IO ()) -> GLsizei -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiubyteubyteubyteubyteIOV :: FunPtr (GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()) -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()

foreign import ccall "dynamic"
	ffiushortushortushortushortIOV :: FunPtr (GLushort -> GLushort -> GLushort -> GLushort -> IO ()) -> GLushort -> GLushort -> GLushort -> GLushort -> IO ()

foreign import ccall "dynamic"
	ffiintintsizeisizeienumIOV :: FunPtr (GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> IO ()) -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffisizeisizeienumenumPtrVIOV :: FunPtr (GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiPtrbooleanIOV :: FunPtr (Ptr GLboolean -> IO ()) -> Ptr GLboolean -> IO ()

foreign import ccall "dynamic"
	ffisizeienumPtrfloatIOV :: FunPtr (GLsizei -> GLenum -> Ptr GLfloat -> IO ()) -> GLsizei -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffidoubledoubledoubledoubledoubledoubleIOV :: FunPtr (GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()) -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrdoubleIOV :: FunPtr (GLenum -> GLenum -> Ptr GLdouble -> IO ()) -> GLenum -> GLenum -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumPtrushortIOV :: FunPtr (GLenum -> Ptr GLushort -> IO ()) -> GLenum -> Ptr GLushort -> IO ()

foreign import ccall "dynamic"
	ffiintushortIOV :: FunPtr (GLint -> GLushort -> IO ()) -> GLint -> GLushort -> IO ()

foreign import ccall "dynamic"
	ffienumdoubledoubleintintPtrdoubleIOV :: FunPtr (GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()) -> GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumfloatfloatintintPtrfloatIOV :: FunPtr (GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()) -> GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumdoubledoubleintintdoubledoubleintintPtrdoubleIOV :: FunPtr (GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()) -> GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumfloatfloatintintfloatfloatintintPtrfloatIOV :: FunPtr (GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()) -> GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiintdoubledoubleintdoubledoubleIOV :: FunPtr (GLint -> GLdouble -> GLdouble -> GLint -> GLdouble -> GLdouble -> IO ()) -> GLint -> GLdouble -> GLdouble -> GLint -> GLdouble -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiintfloatfloatintfloatfloatIOV :: FunPtr (GLint -> GLfloat -> GLfloat -> GLint -> GLfloat -> GLfloat -> IO ()) -> GLint -> GLfloat -> GLfloat -> GLint -> GLfloat -> GLfloat -> IO ()

foreign import ccall "dynamic"
	ffisizeiPtruintPtrfloatIOV :: FunPtr (GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ()) -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiPtrdoublePtrdoubleIOV :: FunPtr (Ptr GLdouble -> Ptr GLdouble -> IO ()) -> Ptr GLdouble -> Ptr GLdouble -> IO ()

foreign import ccall "dynamic"
	ffiPtrintPtrintIOV :: FunPtr (Ptr GLint -> Ptr GLint -> IO ()) -> Ptr GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiPtrshortPtrshortIOV :: FunPtr (Ptr GLshort -> Ptr GLshort -> IO ()) -> Ptr GLshort -> Ptr GLshort -> IO ()

foreign import ccall "dynamic"
	ffienumIOint :: FunPtr (GLenum -> IO GLint) -> GLenum -> IO GLint

foreign import ccall "dynamic"
	ffienumenumdoubleIOV :: FunPtr (GLenum -> GLenum -> GLdouble -> IO ()) -> GLenum -> GLenum -> GLdouble -> IO ()

foreign import ccall "dynamic"
	ffienumsizeiptrPtrVenumIOV :: FunPtr (GLenum -> GLsizeiptr -> Ptr () -> GLenum -> IO ()) -> GLenum -> GLsizeiptr -> Ptr () -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumintptrsizeiptrPtrVIOV :: FunPtr (GLenum -> GLintptr -> GLsizeiptr -> Ptr () -> IO ()) -> GLenum -> GLintptr -> GLsizeiptr -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintfloatintIOV :: FunPtr (GLenum -> GLint -> GLfloat -> GLint -> IO ()) -> GLenum -> GLint -> GLfloat -> GLint -> IO ()

foreign import ccall "dynamic"
	ffienumintPtrfloatIOV :: FunPtr (GLenum -> GLint -> Ptr GLfloat -> IO ()) -> GLenum -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumintPtrintIOV :: FunPtr (GLenum -> GLint -> Ptr GLint -> IO ()) -> GLenum -> GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiIOuint :: FunPtr (IO GLuint) -> IO GLuint

foreign import ccall "dynamic"
	ffienumsizeienumPtrVIOV :: FunPtr (GLenum -> GLsizei -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLsizei -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiuintuintsizeiPtrsizeiPtrintPtrenumPtrcharIOV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()) -> GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()

foreign import ccall "dynamic"
	ffiuintsizeiPtrsizeiPtruintIOV :: FunPtr (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLuint -> IO ()) -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLuint -> IO ()

foreign import ccall "dynamic"
	ffienumPtrbooleanIOV :: FunPtr (GLenum -> Ptr GLboolean -> IO ()) -> GLenum -> Ptr GLboolean -> IO ()

foreign import ccall "dynamic"
	ffienumenumPtrint64IOV :: FunPtr (GLenum -> GLenum -> Ptr GLint64 -> IO ()) -> GLenum -> GLenum -> Ptr GLint64 -> IO ()

foreign import ccall "dynamic"
	ffienumuintPtrint64IOV :: FunPtr (GLenum -> GLuint -> Ptr GLint64 -> IO ()) -> GLenum -> GLuint -> Ptr GLint64 -> IO ()

foreign import ccall "dynamic"
	ffienumIOPtrubyte :: FunPtr (GLenum -> IO (Ptr GLubyte)) -> GLenum -> IO (Ptr GLubyte)

foreign import ccall "dynamic"
	ffienumuintIOPtrubyte :: FunPtr (GLenum -> GLuint -> IO (Ptr GLubyte)) -> GLenum -> GLuint -> IO (Ptr GLubyte)

foreign import ccall "dynamic"
	ffienumintenumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintenumPtrfloatIOV :: FunPtr (GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()) -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffienumintenumPtrintIOV :: FunPtr (GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()) -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiuintintPtrfloatIOV :: FunPtr (GLuint -> GLint -> Ptr GLfloat -> IO ()) -> GLuint -> GLint -> Ptr GLfloat -> IO ()

foreign import ccall "dynamic"
	ffiuintintPtrintIOV :: FunPtr (GLuint -> GLint -> Ptr GLint -> IO ()) -> GLuint -> GLint -> Ptr GLint -> IO ()

foreign import ccall "dynamic"
	ffiintintsizeisizeienumenumPtrVIOV :: FunPtr (GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffiintintsizeisizeiIOV :: FunPtr (GLint -> GLint -> GLsizei -> GLsizei -> IO ()) -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

foreign import ccall "dynamic"
	ffienumenumenumIOV :: FunPtr (GLenum -> GLenum -> GLenum -> IO ()) -> GLenum -> GLenum -> GLenum -> IO ()

foreign import ccall "dynamic"
	ffienumintintsizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintsizeisizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()

foreign import ccall "dynamic"
	ffienumintintsizeisizeisizeiintenumenumPtrVIOV :: FunPtr (GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()) -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> IO ()
