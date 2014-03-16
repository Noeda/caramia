#include "gl_api.h"
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#define TOTAL_MAX_TEXTURES (MAX_TEXTURES*8)

typedef struct s_glstate
{
    GLuint bound_texture_unit;
    GLuint bound_textures_2d[MAX_TEXTURES];
    GLuint bound_textures_1d[MAX_TEXTURES];
    GLuint bound_textures_3d[MAX_TEXTURES];
    GLuint bound_textures_1d_array[MAX_TEXTURES];
    GLuint bound_textures_2d_array[MAX_TEXTURES];
    GLuint bound_textures_2d_multisample[MAX_TEXTURES];
    GLuint bound_textures_2d_multisample_array[MAX_TEXTURES];
    GLuint bound_textures_cube_map[MAX_TEXTURES];
    GLuint bound_array_buffer;
    GLuint bound_element_array_buffer;
    GLuint bound_pixel_pack_buffer;
    GLuint bound_pixel_unpack_buffer;
    GLuint bound_vertex_array;
    GLuint bound_program;
    GLuint bound_draw_framebuffer;
    GLuint bound_read_framebuffer;
    GLint left, bottom;
    GLsizei width, height;
    GLsizei screen_width, screen_height;
    GLenum blendfunc_srcRGB;
    GLenum blendfunc_dstRGB;
    GLenum blendfunc_srcAlpha;
    GLenum blendfunc_dstAlpha;
    GLenum blendeq_modeRGB;
    GLenum blendeq_modeAlpha;
    int samples_passed_query_running;
    int depth_test_enabled;
    int cull_face_enabled;
    GLenum cull_face;
    GLboolean red_color_mask;
    GLboolean green_color_mask;
    GLboolean blue_color_mask;
    GLboolean alpha_color_mask;
    GLboolean depth_mask;
    GLenum draw_buffers[MAX_DRAW_BUFFERS];
} glstate;

/* same structure as with glstate but all the bindings are in one large
 * array. Static assertion ensures these are the same size. */
typedef struct s_glstate_monobindings
{
    GLuint bound_texture_unit;
    GLuint bound_textures[TOTAL_MAX_TEXTURES];
    GLuint bound_array_buffer;
    GLuint bound_element_array_buffer;
    GLuint bound_pixel_pack_buffer;
    GLuint bound_pixel_unpack_buffer;
    GLuint bound_vertex_array;
    GLuint bound_program;
    GLuint bound_draw_framebuffer;
    GLuint bound_read_framebuffer;
    GLint left, bottom;
    GLsizei width, height;
    GLsizei screen_width, screen_height;
    GLenum blendfunc_srcRGB;
    GLenum blendfunc_dstRGB;
    GLenum blendfunc_srcAlpha;
    GLenum blendfunc_dstAlpha;
    GLenum blendeq_modeRGB;
    GLenum blendeq_modeAlpha;
    int samples_passed_query_running;
    int depth_test_enabled;
    int cull_face_enabled;
    GLenum cull_face;
    GLboolean red_color_mask;
    GLboolean green_color_mask;
    GLboolean blue_color_mask;
    GLboolean alpha_color_mask;
    GLboolean depth_mask;
    GLenum draw_buffers[MAX_DRAW_BUFFERS];
} glstate_monobindings;

#define STATIC_ASSERT(COND,MSG) typedef char static_assertion_##MSG[(COND)?1:-1]

STATIC_ASSERT( sizeof(glstate_monobindings) == sizeof(glstate)
             , expected_sizeof_glstate_monobindings_equals_sizeof_glstate );

static pthread_mutex_t glstate_mutex = PTHREAD_MUTEX_INITIALIZER;
static pthread_key_t glstate_tls;
static int glstate_tls_initialized = 0;

static void initialize_my_glstate_local( void );
static GLuint* bound_texture_of( glstate* state, GLenum target );
static GLuint* bound_buffer_of( glstate* state, GLenum target );
static GLenum map_proxy_target( GLenum target );

static void initialize_glstate( glstate* state )
{
    int i1;
    memset( state, 0, sizeof(glstate) );
    state->width = (GLsizei) -1;
    state->height = (GLsizei) -1;
    state->blendeq_modeRGB = GL_FUNC_ADD;
    state->blendeq_modeAlpha = GL_FUNC_ADD;
    state->blendfunc_srcRGB = GL_ONE;
    state->blendfunc_srcAlpha = GL_ONE;
    state->blendfunc_dstRGB = GL_ZERO;
    state->blendfunc_dstAlpha = GL_ZERO;
    state->cull_face = GL_BACK;
    state->red_color_mask = GL_TRUE;
    state->green_color_mask = GL_TRUE;
    state->blue_color_mask = GL_TRUE;
    state->alpha_color_mask = GL_TRUE;
    state->depth_mask = GL_TRUE;
    state->draw_buffers[0] = GL_BACK;
    for ( i1 = 1; i1 < MAX_DRAW_BUFFERS; ++i1 ) {
        state->draw_buffers[i1] = GL_NONE;
    }
}

static void cleanup_tls( void* state )
{
    if ( state ) free( state );
}

void initialize_my_glstate_tls( void )
{
    pthread_mutex_lock( &glstate_mutex );
    if ( glstate_tls_initialized ) {
        pthread_mutex_unlock( &glstate_mutex );
        initialize_my_glstate_local();
        return;
    }

    if ( pthread_key_create( &glstate_tls, cleanup_tls ) ) {
        pthread_mutex_unlock( &glstate_mutex );
        fprintf( stderr, "I could not create TLS for tracking "
                         "OpenGL state.\n");
        abort();
    }

    glstate_tls_initialized = 1;
    pthread_mutex_unlock( &glstate_mutex );

    initialize_my_glstate_local();
}

static void initialize_my_glstate_local( void )
{
    glstate* state = pthread_getspecific( glstate_tls );
    if ( state ) {
        initialize_glstate( state );
        return;
    }

    state = malloc( sizeof(glstate) );
    if ( !state ) {
        pthread_mutex_unlock( &glstate_mutex );
        fprintf( stderr, "I could not allocate memory for locally storing "
                         "OpenGL state.\n");
        abort();
    }
    initialize_glstate( state );
    pthread_setspecific( glstate_tls, state );
}

static glstate* my_glstate( void )
{
    return pthread_getspecific( glstate_tls );
}

void mglCullFace( GLenum mode )
{
    glstate* state = my_glstate();
    if ( mode == state->cull_face ) {
        return;
    }

    glCullFace( mode );
    state->cull_face = mode;
}

void mglEnable( GLenum what )
{
    glstate* state = my_glstate();
    switch ( what ) {
        case GL_DEPTH_TEST:
            if ( state->depth_test_enabled ) {
                return;
            }
            glEnable( GL_DEPTH_TEST );
            state->depth_test_enabled = 1;
            return;
        case GL_CULL_FACE:
            if ( state->cull_face_enabled ) {
                return;
            }
            glEnable( GL_CULL_FACE );
            state->cull_face_enabled = 1;
            return;
        default:
            fprintf( stderr, "Unexpected constant given to mglEnable(): %d\n"
                   , (int) what );
            abort();
    }
}

void mglDisable( GLenum what )
{
    glstate* state = my_glstate();
    switch ( what ) {
        case GL_DEPTH_TEST:
            if ( !state->depth_test_enabled ) {
                return;
            }
            glDisable( GL_DEPTH_TEST );
            state->depth_test_enabled = 0;
            return;
        case GL_CULL_FACE:
            if ( !state->cull_face_enabled ) {
                return;
            }
            glDisable( GL_CULL_FACE );
            state->cull_face_enabled = 0;
            return;
        default:
            fprintf( stderr, "Unexpected constant given to mglDisable(): %d\n"
                   , (int) what );
            abort();
    }
}

GLuint mglGenBuffer( void )
{
    GLuint buf;
    glGenBuffers( 1, &buf );
    return buf;
}

void mglDeleteBuffer( GLuint buffer )
{
    glDeleteBuffers( 1, &buffer );

    glstate* state = my_glstate();
    if ( buffer == state->bound_array_buffer ) {
        state->bound_array_buffer = 0;
    }
    if ( buffer == state->bound_element_array_buffer ) {
        state->bound_element_array_buffer = 0;
    }
    if ( buffer == state->bound_pixel_pack_buffer ) {
        state->bound_pixel_pack_buffer = 0;
    }
    if ( buffer == state->bound_pixel_unpack_buffer ) {
        state->bound_pixel_unpack_buffer = 0;
    }
}

GLuint mglGenVertexArray( void )
{
    GLuint vao;
    glGenVertexArrays( 1, &vao );
    return vao;
}

void mglDeleteVertexArray( GLuint vao )
{
    glDeleteVertexArrays( 1, &vao );

    glstate* state = my_glstate();
    if ( vao == state->bound_vertex_array ) {
        vao = 0;
    }
}

GLuint mglCreateShader( GLenum shader_type )
{
    return glCreateShader( shader_type );
}

void mglDeleteShader( GLuint shader )
{
    glDeleteShader( shader );
}

GLuint mglCreateProgram( void )
{
    return glCreateProgram();
}

void mglDeleteProgram( GLuint program )
{
    glDeleteProgram( program );
    /* no need to touch state->bound_program because OpenGL
       specification says the program will only be deleted when it ceases
       to be part of the rendering context. */
}

GLuint mglGenTexture( void )
{
    GLuint tex;
    glGenTextures( 1, &tex );
    return tex;
}

void mglDeleteTexture( GLuint tex )
{
    int i1;
    glDeleteTextures( 1, &tex );

    glstate_monobindings* state = (glstate_monobindings*) my_glstate();

    for ( i1 = 0; i1 < TOTAL_MAX_TEXTURES; ++i1 )
    {
        if ( tex == state->bound_textures[i1] ) {
            state->bound_textures[i1] = 0;
        }
    }
}

GLuint mglGenQuery( void )
{
    GLuint query;
    glGenQueries( 1, &query );
    return query;
}

void mglDeleteQuery( GLuint query )
{
    glDeleteQueries( 1, &query );
}

GLuint mglGenFramebuffer( void )
{
    GLuint fbuf;
    glGenFramebuffers( 1, &fbuf );
    return fbuf;
}

void mglDeleteFramebuffer( GLuint framebuffer )
{
    glDeleteFramebuffers( 1, &framebuffer );
    glstate* state = my_glstate();
    if ( state->bound_draw_framebuffer == framebuffer ) {
        state->bound_draw_framebuffer = 0;
    }
    if ( state->bound_read_framebuffer == framebuffer ) {
        state->bound_read_framebuffer = 0;
    }
}

void mglActiveTexture( GLuint unit )
{
    glstate* state = my_glstate();
    if ( unit >= MAX_TEXTURES ) {
        fprintf( stderr, "Warning: mglActiveTexture() called with unit (%u) "
                         "larger than MAX_TEXTURES (%d).\n"
               , (unsigned int) unit, (int) MAX_TEXTURES );
        return;
    }
    if ( state->bound_texture_unit != unit ) {
        glActiveTexture( GL_TEXTURE0 + unit );
        state->bound_texture_unit = unit;
    }
}

void mglBindTexture1D( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_1d[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_1D, tex );
        state->bound_textures_1d[state->bound_texture_unit] = tex;
    }
}

void mglBindTexture2D( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_2d[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_2D, tex );
        state->bound_textures_2d[state->bound_texture_unit] = tex;
    }
}

void mglBindTexture3D( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_3d[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_3D, tex );
        state->bound_textures_3d[state->bound_texture_unit] = tex;
    }
}

void mglBindTexture1DArray( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_1d_array[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_1D_ARRAY, tex );
        state->bound_textures_1d_array[state->bound_texture_unit] = tex;
    }
}

void mglBindTexture2DArray( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_2d_array[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_2D_ARRAY, tex );
        state->bound_textures_2d_array[state->bound_texture_unit] = tex;
    }
}

void mglBindTexture2DMultisample( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_2d_multisample[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_2D_MULTISAMPLE, tex );
        state->bound_textures_2d_multisample[state->bound_texture_unit] = tex;
    }
}

void mglBindTexture2DMultisampleArray( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_2d_multisample_array[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_2D_MULTISAMPLE_ARRAY, tex );
        state->bound_textures_2d_multisample_array[state->bound_texture_unit] = tex;
    }
}

void mglBindTextureCubeMap( GLuint tex )
{
    glstate* state = my_glstate();
    if ( state->bound_textures_cube_map[state->bound_texture_unit] != tex ) {
        glBindTexture( GL_TEXTURE_CUBE_MAP, tex );
        state->bound_textures_cube_map[state->bound_texture_unit] = tex;
    }
}

void mglTextureSubImage1D( GLuint tex
                         , GLenum target
                         , GLint level
                         , GLint offset
                         , GLsizei width
                         , GLenum format
                         , GLenum type
                         , const void* pixels )
{
    if ( GLEW_EXT_direct_state_access ) {
        glTextureSubImage1DEXT( tex
                              , target
                              , level
                              , offset
                              , width
                              , format
                              , type
                              , pixels );
        return;
    }

    glstate* state = my_glstate();
    GLuint* bindings = bound_texture_of( state, target );
    GLuint old = bindings[ state->bound_texture_unit ];

    if ( old != tex ) {
        glBindTexture( target, tex );
    }
    glTexSubImage1D( target, level, offset, width, format, type, pixels );
    if ( old != tex ) {
        glBindTexture( target, old );
    }
}

void mglTextureSubImage2D( GLuint tex
                         , GLenum target
                         , GLint level
                         , GLint xoffset
                         , GLint yoffset
                         , GLsizei width
                         , GLsizei height
                         , GLenum format
                         , GLenum type
                         , const void* pixels )
{
    if ( GLEW_EXT_direct_state_access ) {
        glTextureSubImage2DEXT( tex
                              , target
                              , level
                              , xoffset
                              , yoffset
                              , width
                              , height
                              , format
                              , type
                              , pixels );
        return;
    }

    glstate* state = my_glstate();
    GLuint* bindings = bound_texture_of( state, target );
    GLuint old = bindings[ state->bound_texture_unit ];

    if ( old != tex ) {
        glBindTexture( target, tex );
    }
    glTexSubImage2D( target, level, xoffset, yoffset
                   , width, height, format, type, pixels );
    if ( old != tex ) {
        glBindTexture( target, old );
    }
}

void mglTextureSubImage3D( GLuint tex
                         , GLenum target
                         , GLint level
                         , GLint xoffset
                         , GLint yoffset
                         , GLint zoffset
                         , GLsizei width
                         , GLsizei height
                         , GLsizei depth
                         , GLenum format
                         , GLenum type
                         , const void* pixels )
{
    if ( GLEW_EXT_direct_state_access ) {
        glTextureSubImage3DEXT( tex
                              , target
                              , level
                              , xoffset
                              , yoffset
                              , zoffset
                              , width
                              , height
                              , depth
                              , format
                              , type
                              , pixels );
        return;
    }

    glstate* state = my_glstate();
    GLuint* bindings = bound_texture_of( state, target );
    GLuint old = bindings[ state->bound_texture_unit ];

    if ( old != tex ) {
        glBindTexture( target, tex );
    }
    glTexSubImage3D( target, level, xoffset, yoffset, zoffset
                   , width, height, depth, format, type, pixels );
    if ( old != tex ) {
        glBindTexture( target, old );
    }
}

void mglTextureStorage1D( GLuint tex
                        , GLenum target
                        , GLsizei levels
                        , GLenum internal_format
                        , GLsizei width )
{
    if ( GLEW_EXT_direct_state_access ) {
        glTextureStorage1DEXT( tex
                             , target
                             , levels
                             , internal_format
                             , width );
    } else {
        glstate* state = my_glstate();
        int is_proxy = map_proxy_target( target ) != target;
        GLuint old = 0;
        if ( !is_proxy )
            old = bound_texture_of(state, target)[state->bound_texture_unit];
        if ( old != tex && !is_proxy ) {
            glBindTexture( target, tex );
        }
        glTexStorage1D( target, levels, internal_format, width );
        if ( old != tex && !is_proxy ) {
            glBindTexture( target, old );
        }
    }
}

void mglTextureStorage2D( GLuint tex
                        , GLenum target
                        , GLsizei levels
                        , GLenum internal_format
                        , GLsizei width
                        , GLsizei height )
{
    if ( GLEW_EXT_direct_state_access ) {
        glTextureStorage2DEXT( tex
                             , target
                             , levels
                             , internal_format
                             , width
                             , height );
    } else {
        glstate* state = my_glstate();
        int is_proxy = map_proxy_target( target ) != target;
        GLuint old = 0;
        if ( !is_proxy )
            old = bound_texture_of(state, target)[state->bound_texture_unit];
        if ( old != tex && !is_proxy ) {
            glBindTexture( target, tex );
        }
        glTexStorage2D( target, levels, internal_format, width, height );
        if ( old != tex && !is_proxy ) {
            glBindTexture( target, old );
        }
    }
}

void mglTextureStorage3D( GLuint tex
                        , GLenum target
                        , GLsizei levels
                        , GLenum internal_format
                        , GLsizei width
                        , GLsizei height
                        , GLsizei depth )
{
    if ( GLEW_EXT_direct_state_access ) {
        glTextureStorage3DEXT( tex
                             , target
                             , levels
                             , internal_format
                             , width
                             , height
                             , depth );
    } else {
        glstate* state = my_glstate();
        int is_proxy = map_proxy_target( target ) != target;
        GLuint old = 0;
        if ( !is_proxy )
            old = bound_texture_of(state, target)[state->bound_texture_unit];

        if ( old != tex && !is_proxy ) {
            glBindTexture( target, tex );
        }
        glTexStorage3D( target, levels, internal_format
                      , width, height, depth );
        if ( old != tex && !is_proxy ) {
            glBindTexture( target, old );
        }
    }
}

void mglTexture2DMultisample( GLuint tex
                            , GLenum target
                            , GLsizei samples
                            , GLint internal_format
                            , GLsizei width
                            , GLsizei height
                            , GLboolean fixedsamplelocations )
{
    glstate* state = my_glstate();
    int is_proxy = map_proxy_target( target ) != target;
    GLuint old = 0;

    if ( !is_proxy )
        old = bound_texture_of(state, target)[state->bound_texture_unit];

    if ( old != tex && !is_proxy ) {
        glBindTexture( target, tex );
    }
    glTexImage2DMultisample( target, samples, internal_format
                           , width, height, fixedsamplelocations );
    if ( old != tex && !is_proxy ) {
        glBindTexture( target, old );
    }
}

void mglTexture3DMultisample( GLuint tex
                            , GLenum target
                            , GLsizei samples
                            , GLint internal_format
                            , GLsizei width
                            , GLsizei height
                            , GLsizei depth
                            , GLboolean fixedsamplelocations )
{
    glstate* state = my_glstate();
    int is_proxy = map_proxy_target( target ) != target;
    GLuint old = 0;

    if ( !is_proxy )
        old = bound_texture_of(state, target)[state->bound_texture_unit];

    if ( old != tex && !is_proxy ) {
        glBindTexture( target, tex );
    }
    glTexImage3DMultisample( target, samples, internal_format
                           , width, height, depth, fixedsamplelocations );
    if ( old != tex && !is_proxy ) {
        glBindTexture( target, old );
    }
}

void mglGetTextureParameteriv( GLuint tex
                             , GLenum target
                             , GLenum pname
                             , GLint* params )
{
    if ( glGetTextureParameterivEXT ) {
        glGetTextureParameterivEXT( tex, target, pname, params );
        return;
    }
    glstate* state = my_glstate();
    GLenum non_proxy_target = map_proxy_target( target );
    int is_proxy = non_proxy_target != target;

    GLuint* boundings = bound_texture_of( state, non_proxy_target );
    GLuint old = boundings[ state->bound_texture_unit ];

    if ( old != tex && !is_proxy ) {
        glBindTexture( target, tex );
    }
    glGetTexParameteriv( target, pname, params );
    if ( old != tex && !is_proxy ) {
        glBindTexture( target, old );
    }
}

void mglTextureParameteriv( GLuint tex
                          , GLenum target
                          , GLenum pname
                          , GLint* params )
{
    if ( glTextureParameterivEXT ) {
        glTextureParameterivEXT( tex, target, pname, params );
        return;
    }
    glstate* state = my_glstate();
    GLenum non_proxy_target = map_proxy_target( target );
    int is_proxy = non_proxy_target != target;

    GLuint* boundings = bound_texture_of( state, non_proxy_target );
    GLuint old = boundings[ state->bound_texture_unit ];

    if ( old != tex && !is_proxy ) {
        glBindTexture( target, tex );
    }
    glTexParameteriv( target, pname, params );
    if ( old != tex && !is_proxy ) {
        glBindTexture( target, old );
    }
}

void mglGetTextureParameterfv( GLuint tex
                             , GLenum target
                             , GLenum pname
                             , GLfloat* params )
{
    if ( glGetTextureParameterfvEXT ) {
        glGetTextureParameterfvEXT( tex, target, pname, params );
        return;
    }
    glstate* state = my_glstate();
    GLenum non_proxy_target = map_proxy_target( target );
    int is_proxy = non_proxy_target != target;

    GLuint* boundings = bound_texture_of( state, non_proxy_target );
    GLuint old = boundings[ state->bound_texture_unit ];

    if ( old != tex && !is_proxy ) {
        glBindTexture( target, tex );
    }
    glGetTexParameterfv( target, pname, params );
    if ( old != tex && !is_proxy ) {
        glBindTexture( target, old );
    }
}

void mglTextureParameterfv( GLuint tex
                          , GLenum target
                          , GLenum pname
                          , GLfloat* params )
{
    if ( glTextureParameterfvEXT ) {
        glTextureParameterfvEXT( tex, target, pname, params );
        return;
    }
    glstate* state = my_glstate();
    GLenum non_proxy_target = map_proxy_target( target );
    int is_proxy = non_proxy_target != target;

    GLuint* boundings = bound_texture_of( state, non_proxy_target );
    GLuint old = boundings[ state->bound_texture_unit ];

    if ( old != tex && !is_proxy ) {
        glBindTexture( target, tex );
    }
    glTexParameterfv( target, pname, params );
    if ( old != tex && !is_proxy ) {
        glBindTexture( target, old );
    }
}

void mglGetTextureLevelParameteriv( GLuint tex
                                  , GLenum target
                                  , GLint level
                                  , GLenum pname
                                  , GLint* params )
{
    if ( glGetTextureLevelParameterivEXT ) {
        glGetTextureLevelParameterivEXT( tex, target, level, pname, params );
        return;
    }
    GLenum non_proxy_target = map_proxy_target( target );
    int is_proxy = non_proxy_target != target;

    glstate* state = my_glstate();

    GLuint* boundings = bound_texture_of( state, non_proxy_target );
    GLuint old = boundings[ state->bound_texture_unit ];

    if ( old != tex && !is_proxy ) {
        glBindTexture( target, tex );
    }
    glGetTexLevelParameteriv( target, level, pname, params );
    if ( old != tex && !is_proxy ) {
        glBindTexture( target, old );
    }
}

void mglNamedBufferData( GLuint buffer
                       , GLsizeiptr size
                       , const GLvoid* data
                       , GLenum usage )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedBufferDataEXT( buffer, size, data, usage );
        return;
    }

    glstate* state = my_glstate();

    GLuint old = state->bound_array_buffer;
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    glBufferData( GL_ARRAY_BUFFER, size, data, usage );
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old );
    }
}

void mglNamedBufferStorage( GLuint buffer
                          , GLsizeiptr size
                          , const GLvoid* data
                          , GLbitfield flags )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedBufferStorageEXT( buffer, size, data, flags );
        return;
    }

    glstate* state = my_glstate();
    GLuint old = state->bound_array_buffer;
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    glBufferStorage( GL_ARRAY_BUFFER, size, data, flags );
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old );
    }
}

void mglNamedBufferSubData( GLuint buffer
                          , GLintptr offset
                          , GLsizeiptr size
                          , const GLvoid* data )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedBufferSubDataEXT( buffer, offset, size, data );
        return;
    }

    glstate* state = my_glstate();

    GLuint old = state->bound_array_buffer;
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    glBufferSubData( GL_ARRAY_BUFFER, offset, size, data );
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old );
    }
}

void mglBindBuffer( GLenum target, GLuint buffer )
{
    glstate* state = my_glstate();
    GLuint* buf = bound_buffer_of( state, target );

    if ( (*buf) != buffer ) {
        glBindBuffer( target, buffer );
        (*buf) = buffer;
    }
}

void mglGetNamedBufferSubData( GLuint buffer
                             , GLintptr offset
                             , GLsizeiptr size
                             , GLvoid* data )
{
    if ( GLEW_EXT_direct_state_access ) {
        glGetNamedBufferSubDataEXT( buffer, offset, size, data );
        return;
    }

    glstate* state = my_glstate();

    GLuint old = state->bound_array_buffer;
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    glGetBufferSubData( GL_ARRAY_BUFFER, offset, size, data );
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old );
    }
}

void mglInvalidateBufferData( GLuint buffer )
{
    if ( GLEW_ARB_invalidate_subdata ) {
        glInvalidateBufferData( buffer );
    }
}

GLvoid* mglMapNamedBuffer( GLuint buffer, GLenum access )
{
    if ( GLEW_EXT_direct_state_access ) {
        return glMapNamedBufferEXT( buffer, access );
    }

    glstate* state = my_glstate();
    GLuint old = state->bound_array_buffer;
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    void* result = glMapBuffer( GL_ARRAY_BUFFER, access );
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old );
    }
    return result;
}

GLvoid* mglMapNamedBufferRange( GLuint buffer, GLintptr offset
                              , GLsizeiptr length, GLenum access )
{
    if ( GLEW_EXT_direct_state_access ) {
        return glMapNamedBufferRangeEXT( buffer, offset, length, access );
    }

    glstate* state = my_glstate();
    GLuint old = state->bound_array_buffer;
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    void* result = glMapBufferRange( GL_ARRAY_BUFFER, offset, length, access );
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old );
    }
    return result;
}

GLboolean mglUnmapNamedBuffer( GLuint buffer )
{
    if ( GLEW_EXT_direct_state_access ) {
        return glUnmapNamedBufferEXT( buffer );
    }

    glstate* state = my_glstate();
    GLuint old = state->bound_array_buffer;
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    GLboolean result = glUnmapBuffer( GL_ARRAY_BUFFER );
    if ( old != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old );
    }
    return result;
}

void mglVertexArrayVertexAttribOffset( GLuint vao
                                     , GLuint buffer
                                     , GLuint index
                                     , GLint size
                                     , GLenum type
                                     , GLboolean normalized
                                     , GLsizei stride
                                     , GLintptr offset )
{
    if ( GLEW_EXT_direct_state_access ) {
        glVertexArrayVertexAttribOffsetEXT( vao, buffer, index
                                          , size, type, normalized, stride
                                          , offset );
        return;
    }

    glstate* state = my_glstate();
    GLuint old_vao = state->bound_vertex_array;
    GLuint old_buffer = state->bound_array_buffer;
    if ( old_vao != vao ) {
        glBindVertexArray( vao );
    }
    if ( old_buffer != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    glVertexAttribPointer( index, size, type, normalized, stride
                         , (GLvoid*) offset );
    if ( old_buffer != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old_buffer );
    }
    if ( old_vao != vao ) {
        glBindVertexArray( old_vao );
    }
}

void mglVertexArrayVertexAttribIOffset( GLuint vao
                                      , GLuint buffer
                                      , GLuint index
                                      , GLint size
                                      , GLenum type
                                      , GLsizei stride
                                      , GLintptr offset )
{
    if ( GLEW_EXT_direct_state_access ) {
        glVertexArrayVertexAttribIOffsetEXT( vao, buffer, index
                                           , size, type, stride
                                           , offset );
        return;
    }

    glstate* state = my_glstate();
    GLuint old_vao = state->bound_vertex_array;
    GLuint old_buffer = state->bound_array_buffer;
    if ( old_vao != vao ) {
        glBindVertexArray( vao );
    }
    if ( old_buffer != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, buffer );
    }
    glVertexAttribIPointer( index, size, type, stride, (GLvoid*) offset );
    if ( old_buffer != buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old_buffer );
    }
    if ( old_vao != vao ) {
        glBindVertexArray( old_vao );
    }
}

void mglVertexArrayVertexAttribDivisor( GLuint vao
                                      , GLuint index
                                      , GLuint divisor )
{
    glstate* state = my_glstate();
    GLuint old = state->bound_vertex_array;
    if ( old != vao ) {
        glBindVertexArray( vao );
    }
    glVertexAttribDivisorARB( index, divisor );
    if ( old != vao ) {
        glBindVertexArray( old );
    }
}

void mglBindVertexArray( GLuint vao )
{
    glstate* state = my_glstate();
    if ( state->bound_vertex_array != vao ) {
        state->bound_vertex_array = vao;
        glBindVertexArray( vao );
    }
}

void mglEnableVertexArrayAttrib( GLuint vao, GLuint index )
{
    if ( GLEW_EXT_direct_state_access ) {
        glEnableVertexArrayAttribEXT( vao, index );
        return;
    }

    glstate* state = my_glstate();
    GLuint old = state->bound_vertex_array;
    if ( old != vao ) {
        glBindVertexArray( vao );
    }
    glEnableVertexAttribArray( index );
    if ( old != vao ) {
        glBindVertexArray( old );
    }
}

void mglShaderSource( GLuint shader, GLsizei count
                    , const GLchar** src, const GLint* len )
{
    glShaderSource( shader, count, src, len );
}

void mglCompileShader( GLuint shader )
{
    glCompileShader( shader );
}

void mglGetShaderiv( GLuint shader, GLenum pname, GLint* params )
{
    glGetShaderiv( shader, pname, params );
}

void mglGetShaderInfoLog( GLuint shader, GLsizei maxlength
                        , GLsizei* length, GLchar* info_log )
{
    glGetShaderInfoLog( shader, maxlength, length, info_log );
}

void mglAttachShader( GLuint program, GLuint shader )
{
    glAttachShader( program, shader );
}

void mglLinkProgram( GLuint program )
{
    glLinkProgram( program );
}

void mglGetProgramiv( GLuint program, GLenum pname, GLint* params )
{
    glGetProgramiv( program, pname, params );
}

void mglGetProgramInfoLog( GLuint program, GLsizei maxlength
                         , GLsizei* length, GLchar* infolog )
{
    glGetProgramInfoLog( program, maxlength, length, infolog );
}

void mglBindFragDataLocation( GLuint program, GLuint colornumber
                            , const char* name )
{
    glBindFragDataLocation( program, colornumber, name );
}

void mglUseProgram( GLuint program )
{
    glstate* state = my_glstate();
    if ( state->bound_program != program ) {
        glUseProgram( program );
        state->bound_program = program;
    }
}

void mglProgramUniform1f( GLuint program, GLint location, GLfloat v0 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform1fEXT( program, location, v0 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform1f( location, v0 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniform2f( GLuint program, GLint location
                        , GLfloat v0, GLfloat v1 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform2fEXT( program, location, v0, v1 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform2f( location, v0, v1 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniform3f( GLuint program, GLint location
                        , GLfloat v0, GLfloat v1, GLfloat v2 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform3fEXT( program, location, v0, v1, v2 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform3f( location, v0, v1, v2 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniform4f( GLuint program, GLint location
                        , GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform4fEXT( program, location, v0, v1, v2, v3 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform4f( location, v0, v1, v2, v3 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniform1i( GLuint program, GLint location, GLint v0 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform1iEXT( program, location, v0 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform1i( location, v0 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniform2i( GLuint program, GLint location
                        , GLint v0, GLint v1 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform2iEXT( program, location, v0, v1 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform2i( location, v0, v1 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniform3i( GLuint program, GLint location
                        , GLint v0, GLint v1, GLint v2 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform3iEXT( program, location, v0, v1, v2 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform3i( location, v0, v1, v2 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniform4i( GLuint program, GLint location
                        , GLint v0, GLint v1, GLint v2, GLint v3 )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniform4iEXT( program, location, v0, v1, v2, v3 );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniform4i( location, v0, v1, v2, v3 );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniformMatrix3fv( GLuint program, GLint location
                               , GLsizei count, GLboolean tmglspose
                               , const GLfloat* content )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniformMatrix3fvEXT( program, location
                                    , count, tmglspose, content );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniformMatrix3fv( location, count, tmglspose, content );
    if ( old != program ) {
        glUseProgram( old );
    }
}

void mglProgramUniformMatrix4fv( GLuint program, GLint location
                               , GLsizei count, GLboolean tmglspose
                               , const GLfloat* content )
{
    if ( GLEW_EXT_direct_state_access ) {
        glProgramUniformMatrix4fvEXT( program, location
                                    , count, tmglspose, content );
        return;
    }
    glstate* state = my_glstate();
    GLuint old = state->bound_program;
    if ( old != program ) {
        glUseProgram( program );
    }
    glUniformMatrix4fv( location, count, tmglspose, content );
    if ( old != program ) {
        glUseProgram( old );
    }
}

GLint mglGetAttribLocation( GLuint program, const char* name )
{
    return glGetAttribLocation( program, name );
}

GLint mglGetUniformLocation( GLuint program, const char* name )
{
    return glGetUniformLocation( program, name );
}

void mglNamedFramebufferTexture1D( GLuint framebuffer
                                 , GLenum attachment
                                 , GLenum textarget
                                 , GLuint texture
                                 , GLint level )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedFramebufferTexture1DEXT( framebuffer, attachment, textarget
                                      , texture, level );
        return;
    }

    glstate* state = my_glstate();
    GLuint old_fbuf = state->bound_draw_framebuffer;

    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, framebuffer );
    }
    glFramebufferTexture1D( GL_DRAW_FRAMEBUFFER
                          , attachment
                          , textarget
                          , texture
                          , level );
    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, old_fbuf );
    }
}

void mglNamedFramebufferTextureLayer( GLuint framebuffer
                                    , GLenum attachment
                                    , GLuint texture
                                    , GLint level
                                    , GLint layer )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedFramebufferTextureLayerEXT( framebuffer, attachment
                                         , texture, level, layer );
        return;
    }

    glstate* state = my_glstate();
    GLuint old_fbuf = state->bound_draw_framebuffer;

    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, framebuffer );
    }
    glFramebufferTextureLayer( GL_DRAW_FRAMEBUFFER
                             , attachment
                             , texture
                             , level
                             , layer );
    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, old_fbuf );
    }
}

void mglNamedFramebufferTexture2D( GLuint framebuffer
                                 , GLenum attachment
                                 , GLenum textarget
                                 , GLuint texture
                                 , GLint level )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedFramebufferTexture2DEXT( framebuffer, attachment, textarget
                                      , texture, level );
        return;
    }

    glstate* state = my_glstate();
    GLuint old_fbuf = state->bound_draw_framebuffer;

    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, framebuffer );
    }
    glFramebufferTexture2D( GL_DRAW_FRAMEBUFFER
                          , attachment
                          , textarget
                          , texture
                          , level );
    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, old_fbuf );
    }
}

void mglNamedFramebufferTexture3D( GLuint framebuffer
                                 , GLenum attachment
                                 , GLenum textarget
                                 , GLuint texture
                                 , GLint level
                                 , GLint zoffset )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedFramebufferTexture3DEXT( framebuffer, attachment, textarget
                                      , texture, level, zoffset );
        return;
    }

    glstate* state = my_glstate();
    GLuint old_fbuf = state->bound_draw_framebuffer;

    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, framebuffer );
    }
    glFramebufferTexture3D( GL_DRAW_FRAMEBUFFER
                          , attachment
                          , textarget
                          , texture
                          , level
                          , zoffset );
    if ( old_fbuf != framebuffer ) {
        glBindFramebuffer( GL_DRAW_FRAMEBUFFER, old_fbuf );
    }
}

void mglBindFramebuffer( GLenum target, GLuint framebuffer )
{
    glstate* state = my_glstate();
    if ( target == GL_DRAW_FRAMEBUFFER ) {
        if ( state->bound_draw_framebuffer != framebuffer ) {
            glBindFramebuffer( GL_DRAW_FRAMEBUFFER, framebuffer );
            state->bound_draw_framebuffer = framebuffer;
        }
    } else if ( target == GL_READ_FRAMEBUFFER ) {
        if ( state->bound_read_framebuffer != framebuffer ) {
            glBindFramebuffer( GL_READ_FRAMEBUFFER, framebuffer );
            state->bound_read_framebuffer = framebuffer;
        }
    } else if ( target == GL_FRAMEBUFFER ) {
        if ( state->bound_draw_framebuffer != framebuffer ||
             state->bound_read_framebuffer != framebuffer ) {
            glBindFramebuffer( GL_FRAMEBUFFER, framebuffer );
            state->bound_draw_framebuffer = framebuffer;
            state->bound_read_framebuffer = framebuffer;
        }
    } else {
        assert( 0 && "Unexpected 'target' in mglBindFramebuffer()." );
    }
}

void mglDrawElements( GLenum mode, GLsizei count
                    , GLenum type, const GLvoid* indices )
{
    glDrawElements( mode, count, type, indices );
}

void mglDrawArrays( GLenum mode, GLint first, GLsizei count )
{
    glDrawArrays( mode, first, count );
}

void mglMultiDrawArrays( GLenum mode
                       , GLint* start_indices
                       , GLsizei* num_indices
                       , GLsizei num_sets )
{
    glMultiDrawArrays( mode, start_indices, num_indices, num_sets );
}

int mglHasDirectStateAccess( void )
{
    return GLEW_EXT_direct_state_access;
}

void mglGetIntegerv( GLenum pname, GLint* params )
{
    glGetIntegerv( pname, params );
}

void mglPixelStorei( GLenum pname, GLint param )
{
    glPixelStorei( pname, param );
}

void mglClear( GLbitfield mask )
{
    glClear( mask );
}

void mglClearBufferfv( GLenum buffer
                     , GLint drawBuffer
                     , const GLfloat* value )
{
    glClearBufferfv( buffer, drawBuffer, value );
}

void mglClearColor( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha )
{
    glClearColor( red, green, blue, alpha );
}

void mglClearDepthf( GLfloat value )
{
    glClearDepthf( value );
}

void mglClearStencil( GLint value )
{
    glClearStencil( value );
}

static GLuint* bound_texture_of( glstate* state, GLenum target )
{
    switch ( target ) {
        case GL_TEXTURE_1D: return state->bound_textures_1d;
        case GL_TEXTURE_2D: return state->bound_textures_2d;
        case GL_TEXTURE_3D: return state->bound_textures_3d;
        case GL_TEXTURE_1D_ARRAY: return state->bound_textures_1d_array;
        case GL_TEXTURE_2D_ARRAY: return state->bound_textures_2d_array;
        case GL_TEXTURE_2D_MULTISAMPLE:
            return state->bound_textures_2d_multisample;
        case GL_TEXTURE_2D_MULTISAMPLE_ARRAY:
            return state->bound_textures_2d_multisample_array;
        case GL_TEXTURE_CUBE_MAP:
            return state->bound_textures_cube_map;
        default:
            assert( 0 && "Unexpected 'target' in bound_texture_of()." );
            abort();
    }
}

static GLuint* bound_buffer_of( glstate* state, GLenum target )
{
    switch( target ) {
        case GL_ARRAY_BUFFER:
            return &state->bound_array_buffer;
        case GL_ELEMENT_ARRAY_BUFFER:
            return &state->bound_element_array_buffer;
        case GL_PIXEL_PACK_BUFFER:
            return &state->bound_pixel_pack_buffer;
        case GL_PIXEL_UNPACK_BUFFER:
            return &state->bound_pixel_unpack_buffer;
        default:
            assert( 0 && "Unexpected 'target' in bound_buffer_of()." );
            abort();
    }
}

static GLenum map_proxy_target( GLenum target )
{
    if ( target == GL_PROXY_TEXTURE_1D ) return GL_TEXTURE_1D;
    if ( target == GL_PROXY_TEXTURE_2D ) return GL_TEXTURE_2D;
    if ( target == GL_PROXY_TEXTURE_3D ) return GL_TEXTURE_3D;
    if ( target == GL_PROXY_TEXTURE_CUBE_MAP ) return GL_TEXTURE_CUBE_MAP;
    if ( target == GL_PROXY_TEXTURE_1D_ARRAY ) return GL_TEXTURE_1D_ARRAY;
    if ( target == GL_PROXY_TEXTURE_2D_ARRAY ) return GL_TEXTURE_2D_ARRAY;
    if ( target == GL_PROXY_TEXTURE_RECTANGLE ) return GL_TEXTURE_RECTANGLE;
    if ( target == GL_PROXY_TEXTURE_CUBE_MAP_ARRAY )
        return GL_TEXTURE_CUBE_MAP_ARRAY;
    if ( target == GL_PROXY_TEXTURE_2D_MULTISAMPLE )
        return GL_TEXTURE_2D_MULTISAMPLE;
    if ( target == GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY )
        return GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
    return target;
}

void mglViewport( GLint left, GLint bottom
                , GLsizei width, GLsizei height )
{
    glstate* state = my_glstate();
    if ( width < 0 || height < 0 ||
         left != state->left ||
         bottom != state->bottom ||
         width != state->width ||
         height != state->height ) {
        glViewport( left, bottom, width, height );
        state->left = left;
        state->bottom = bottom;
        state->width = width;
        state->height = height;
    }
}

void mglSetScreenSize( GLsizei width, GLsizei height )
{
    glstate* state = my_glstate();
    state->screen_width = width;
    state->screen_height = height;
}

void mglGetScreenSize( GLsizei* width, GLsizei* height )
{
    glstate* state = my_glstate();
    (*width) = state->screen_width;
    (*height) = state->screen_height;
}

void mglBlendFuncSeparate( GLenum srcRGB
                         , GLenum dstRGB
                         , GLenum srcAlpha
                         , GLenum dstAlpha )
{
    glstate* state = my_glstate();
    if ( state->blendfunc_srcRGB != srcRGB ||
         state->blendfunc_dstRGB != dstRGB ||
         state->blendfunc_srcAlpha != srcAlpha ||
         state->blendfunc_dstAlpha != dstAlpha ) {
        glBlendFuncSeparate( srcRGB, dstRGB, srcAlpha, dstAlpha );
        state->blendfunc_srcRGB = srcRGB;
        state->blendfunc_dstRGB = dstRGB;
        state->blendfunc_srcAlpha = srcAlpha;
        state->blendfunc_dstAlpha = dstAlpha;
    }
}

void mglBlendEquationSeparate( GLenum modeRGB
                             , GLenum modeAlpha )
{
    glstate* state = my_glstate();
    if ( state->blendeq_modeRGB != modeRGB ||
         state->blendeq_modeAlpha != modeAlpha ) {
        glBlendEquationSeparate( modeRGB, modeAlpha );
        state->blendeq_modeRGB = modeRGB;
        state->blendeq_modeAlpha = modeAlpha;
    }
}

void mglFlush( void )
{
    glFlush();
}

void mglFinish( void )
{
    glFinish();
}

GLsync mglFenceSync( GLenum condition, GLbitfield flags )
{
    return glFenceSync( condition, flags );
}

GLenum mglClientWaitSync( GLsync sync, GLbitfield flags, GLuint64 timeout )
{
    return glClientWaitSync( sync, flags, timeout );
}

void mglWaitSync( GLsync sync, GLbitfield flags, GLuint64 timeout )
{
    glWaitSync( sync, flags, timeout );
}

void mglDeleteSync( GLsync sync )
{
    glDeleteSync( sync );
}

void mglBeginQuery( GLenum target, GLuint id )
{
    glBeginQuery( target, id );
    glstate* state = my_glstate();
    switch ( target )
    {
        case GL_SAMPLES_PASSED:
        case GL_ANY_SAMPLES_PASSED:
            state->samples_passed_query_running = 1;
            break;
        default:
        fprintf( stderr, "Unknown OpenGL constant %u given to "
                         "mglBeginQuery().\n", target );
        abort();
    }
}

void mglEndQuery( GLenum target )
{
    glEndQuery( target );
    glstate* state = my_glstate();
    switch ( target )
    {
        case GL_SAMPLES_PASSED:
        case GL_ANY_SAMPLES_PASSED:
            state->samples_passed_query_running = 0;
            break;
        default:
        fprintf( stderr, "Unknown OpenGL constant %u given to "
                         "mglEndQuery().\n", target );
        abort();
    }
}

void mglGetQueryObjectuiv( GLuint id, GLenum pname, GLuint* params )
{
    glGetQueryObjectuiv( id, pname, params );
}

int mglQueryIsRunning( GLenum target )
{
    glstate* state = my_glstate();
    switch ( target )
    {
        case GL_SAMPLES_PASSED:
        case GL_ANY_SAMPLES_PASSED:
        return state->samples_passed_query_running;
        default:
        fprintf( stderr, "Unknown OpenGL constant %u given to "
                         "mglQueryIsRunning().\n", target );
        abort();
    }
}

void mglNamedCopyBufferSubData( GLuint read_buffer, GLuint write_buffer
                              , GLintptr read_offset, GLintptr write_offset
                              , GLsizeiptr size )
{
    if ( GLEW_EXT_direct_state_access ) {
        glNamedCopyBufferSubDataEXT( read_buffer, write_buffer
                                   , read_offset, write_offset
                                   , size );
        return;
    }

    glstate* state = my_glstate();
    GLuint old_bound_array_buffer = state->bound_array_buffer;
    GLuint old_bound_element_buffer = state->bound_element_array_buffer;

    if ( old_bound_array_buffer != read_buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, read_buffer );
    }
    if ( old_bound_element_buffer != write_buffer ) {
        glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, write_buffer );
    }
    glCopyBufferSubData( GL_ARRAY_BUFFER
                       , GL_ELEMENT_ARRAY_BUFFER
                       , read_offset
                       , write_offset
                       , size );
    if ( old_bound_array_buffer != read_buffer ) {
        glBindBuffer( GL_ARRAY_BUFFER, old_bound_array_buffer );
    }
    if ( old_bound_element_buffer != write_buffer ) {
        glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, old_bound_element_buffer );
    }
}

void mglGenerateMipmapTexture( GLuint tex, GLenum target )
{
    if ( GLEW_EXT_direct_state_access ) {
        glGenerateTextureMipmapEXT( tex, target );
        return;
    }

    glstate* state = my_glstate();
    GLuint* bindings = bound_texture_of( state, target );
    GLuint old = bindings[ state->bound_texture_unit ];

    if ( old != tex ) {
        glBindTexture( target, tex );
    }
    glGenerateMipmap( target );
    if ( old != tex ) {
        glBindTexture( target, old );
    }
}

void mglColorMask( GLboolean red
                 , GLboolean green
                 , GLboolean blue
                 , GLboolean alpha )
{
    glstate* state = my_glstate();
    if ( state->red_color_mask != red ||
         state->green_color_mask != green ||
         state->blue_color_mask != blue ||
         state->alpha_color_mask != alpha ) {
        glColorMask( red, green, blue, alpha );
        state->red_color_mask = red;
        state->green_color_mask = green;
        state->blue_color_mask = blue;
        state->alpha_color_mask = alpha;
    }
}

void mglDepthMask( GLboolean depth )
{
    glstate* state = my_glstate();
    if ( state->depth_mask != depth ) {
        glDepthMask( depth );
        state->depth_mask = depth;
    }
}

void mglDrawBuffers( GLsizei n, const GLenum* bufs )
{
    GLsizei i1;
    glstate* state = my_glstate();

    for ( i1 = 0; i1 < n; ++i1 ) {
        if ( state->draw_buffers[i1] != bufs[i1] ) {
            goto do_it;
        }
    }
    for ( i1 = n; i1 < MAX_DRAW_BUFFERS; ++i1 ) {
        if ( state->draw_buffers[i1] != GL_NONE ) {
            goto do_it;
        }
    }
    return;
do_it:
    glDrawBuffers( n, bufs );
    memcpy( state->draw_buffers, bufs, n*sizeof(GLenum) );
    for ( i1 = n; i1 < MAX_DRAW_BUFFERS; ++i1 ) {
        state->draw_buffers[i1] = GL_NONE;
    }
}

void mglInitializeGLEW( void )
{
    glewExperimental = GL_TRUE;
    glewInit();
}

void mglGetVersion( int* major, int* minor )
{
    (*major) = 0;
    (*minor) = 0;
#define CHECK_VER(majorv, minorv) \
    if ( GLEW_VERSION_##majorv##_##minorv ) { \
        (*major) = majorv; \
        (*minor) = minorv; \
        return; \
    }
    CHECK_VER(4, 4);
    CHECK_VER(4, 3);
    CHECK_VER(4, 2);
    CHECK_VER(4, 1);
    CHECK_VER(4, 0);
    CHECK_VER(3, 3);
    CHECK_VER(3, 2);
    CHECK_VER(3, 1);
    CHECK_VER(3, 0);
    CHECK_VER(2, 1);
    CHECK_VER(2, 0);
    CHECK_VER(1, 5);
    CHECK_VER(1, 4);
    CHECK_VER(1, 3);
    CHECK_VER(1, 2);
    CHECK_VER(1, 1);
#undef CHECK_VER
}

int has_GL_ARB_buffer_storage( void )
{
    return GLEW_ARB_buffer_storage != 0;
}

