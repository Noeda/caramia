/* convenience C bindings to OpenGL.
 *
   They will attempt to
     * minimize actual OpenGL calls,
     * use extensions to increase performance,
     * generally be pleasant to use.

   Prefix for all functions is 'mgl', to mimic how OpenGL functions have
   'gl'. However, data types are generally the GL ones.

   I hope tracking all the state and minimizing calls is worth it...
*/

#ifndef mgl_gl_api_h
#define mgl_gl_api_h

#include <glew.h>

#ifdef __cplusplus
extern "C" {
#endif

#define MAX_TEXTURES 256
#define MAX_DRAW_BUFFERS 16

/* initialize GLEW for all this */
void mglInitializeGLEW( void );
void mglGetVersion( int* major, int* minor );

/* generating names */
GLuint mglGenTexture( void );
GLuint mglGenBuffer( void );
GLuint mglGenFramebuffer( void );
GLuint mglGenVertexArray( void );
GLuint mglCreateShader( GLenum shader_type );
GLuint mglCreateProgram( void );
GLuint mglGenFramebuffer( void );
GLuint mglGenQuery( void );

/* destroying names */
void mglDeleteTexture( GLuint tex );
void mglDeleteBuffer( GLuint buffer );
void mglDeleteFramebuffer( GLuint fbo );
void mglDeleteVertexArray( GLuint vao );
void mglDeleteShader( GLuint shader );
void mglDeleteProgram( GLuint shader_program );
void mglDeleteFramebuffer( GLuint framebuffer );
void mglDeleteQuery( GLuint query );

/* enabling and disabling */
void mglEnable( GLenum what );
void mglDisable( GLenum what );

/* culling */
void mglCullFace( GLenum mode );

/* depth/color masks */
void mglColorMask( GLboolean red
                 , GLboolean green
                 , GLboolean blue
                 , GLboolean alpha );
void mglDepthMask( GLboolean depth );


/* textures */
void mglActiveTexture( GLuint unit );
void mglBindTexture1D( GLuint tex );
void mglBindTexture1DArray( GLuint tex );
void mglBindTexture2D( GLuint tex );
void mglBindTexture2DArray( GLuint tex );
void mglBindTexture2DMultisample( GLuint tex );
void mglBindTexture2DMultisampleArray( GLuint tex );
void mglBindTexture3D( GLuint tex );
void mglBindTextureCubeMap( GLuint tex );
void mglTextureStorage1D( GLuint tex
                        , GLenum target
                        , GLsizei levels
                        , GLenum internal_format
                        , GLsizei width );
void mglTextureStorage2D( GLuint tex
                        , GLenum target
                        , GLsizei levels
                        , GLenum internal_format
                        , GLsizei width
                        , GLsizei height );
void mglTextureStorage3D( GLuint tex
                        , GLenum target
                        , GLsizei levels
                        , GLenum internal_format
                        , GLsizei width
                        , GLsizei height
                        , GLsizei depth );
void mglTexture2DMultisample( GLuint tex
                            , GLenum target
                            , GLsizei samples
                            , GLint internal_format
                            , GLsizei width
                            , GLsizei height
                            , GLboolean fixedsamplelocations );
void mglTexture3DMultisample( GLuint tex
                            , GLenum target
                            , GLsizei samples
                            , GLint internal_format
                            , GLsizei width
                            , GLsizei height
                            , GLsizei depth
                            , GLboolean fixedsamplelocations );
void mglGetTextureParameteriv( GLuint tex
                             , GLenum target
                             , GLenum pname
                             , GLint* params );
void mglTextureParameteriv( GLuint tex
                          , GLenum target
                          , GLenum pname
                          , GLint* params );
void mglGetTextureParameterfv( GLuint tex
                             , GLenum target
                             , GLenum pname
                             , GLfloat* params );
void mglTextureParameterfv( GLuint tex
                          , GLenum target
                          , GLenum pname
                          , GLfloat* params );
void mglGetTextureLevelParameteriv( GLuint tex
                                  , GLenum target
                                  , GLint level
                                  , GLenum pname
                                  , GLint* params );
void mglTextureSubImage1D( GLuint tex
                         , GLenum target
                         , GLint level
                         , GLint offset
                         , GLsizei width
                         , GLenum format
                         , GLenum type
                         , const void* pixels );
void mglTextureSubImage2D( GLuint tex
                         , GLenum target
                         , GLint level
                         , GLint xoffset
                         , GLint yoffset
                         , GLsizei width
                         , GLsizei height
                         , GLenum format
                         , GLenum type
                         , const void* pixels );
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
                         , const void* pixels );
void mglGenerateMipmapTexture( GLuint tex, GLenum target );

/* buffer objects */
void mglNamedBufferData( GLuint buffer
                       , GLsizeiptr size
                       , const GLvoid* data
                       , GLenum usage );
void mglNamedBufferStorage( GLuint buffer
                          , GLsizeiptr size
                          , const GLvoid* data
                          , GLbitfield flags );
void mglNamedBufferSubData( GLuint buffer
                          , GLintptr offset
                          , GLsizeiptr size
                          , const GLvoid* data );
void mglBindBuffer( GLenum target, GLuint buffer );
void mglGetNamedBufferSubData( GLuint buffer
                             , GLintptr offset
                             , GLsizeiptr size
                             , GLvoid* data );
void mglInvalidateBufferData( GLuint buffer );
GLvoid* mglMapNamedBuffer( GLuint buffer, GLenum access );
GLvoid* mglMapNamedBufferRange( GLuint buffer, GLintptr offset
                              , GLsizeiptr length, GLenum access );
GLboolean mglUnmapNamedBuffer( GLuint buffer );
void mglNamedCopyBufferSubData( GLuint read_buffer, GLuint write_buffer
                              , GLintptr read_offset, GLintptr write_offset
                              , GLsizeiptr size );

/* vertex array objects */
void mglBindVertexArray( GLuint vao );
void mglVertexArrayVertexAttribOffset( GLuint vao
                                     , GLuint buffer
                                     , GLuint index
                                     , GLint size
                                     , GLenum type
                                     , GLboolean normalized
                                     , GLsizei stride
                                     , GLintptr offset );
void mglVertexArrayVertexAttribIOffset( GLuint vao
                                      , GLuint buffer
                                      , GLuint index
                                      , GLint size
                                      , GLenum type
                                      , GLsizei stride
                                      , GLintptr offset );
void mglVertexArrayVertexAttribDivisor( GLuint vao
                                      , GLuint index
                                      , GLuint divisor );
void mglEnableVertexArrayAttrib( GLuint vao, GLuint index );

/* shaders and shader programs */
void mglShaderSource( GLuint shader, GLsizei count
                    , const GLchar** src, const GLint* len );
void mglCompileShader( GLuint shader );
void mglGetShaderiv( GLuint shader, GLenum pname, GLint* params );
void mglGetShaderInfoLog( GLuint shader, GLsizei maxlength
                        , GLsizei* length, GLchar* info_log );
void mglAttachShader( GLuint program, GLuint shader );
void mglLinkProgram( GLuint program );
void mglGetProgramiv( GLuint program, GLenum pname, GLint* params );
void mglGetProgramInfoLog( GLuint program, GLsizei maxlength
                         , GLsizei* length, GLchar* infolog );
void mglBindFragDataLocation( GLuint program, GLuint colornumber
                            , const char* name );
void mglUseProgram( GLuint program );
void mglProgramUniform1f( GLuint program, GLint location, GLfloat v0 );
void mglProgramUniform2f( GLuint program, GLint location
                        , GLfloat v0, GLfloat v1 );
void mglProgramUniform3f( GLuint program, GLint location
                        , GLfloat v0, GLfloat v1, GLfloat v2 );
void mglProgramUniform4f( GLuint program, GLint location
                        , GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3 );
void mglProgramUniform1i( GLuint program, GLint location, GLint v0 );
void mglProgramUniform2i( GLuint program, GLint location
                        , GLint v0, GLint v1 );
void mglProgramUniform3i( GLuint program, GLint location
                        , GLint v0, GLint v1, GLint v2 );
void mglProgramUniform4i( GLuint program, GLint location
                        , GLint v0, GLint v1, GLint v2, GLint v3 );
void mglProgramUniformMatrix3fv( GLuint program, GLint location
                               , GLsizei count, GLboolean tmglspose
                               , const GLfloat* content );
void mglProgramUniformMatrix4fv( GLuint program, GLint location
                               , GLsizei count, GLboolean tmglspose
                               , const GLfloat* content );
GLint mglGetAttribLocation( GLuint program, const char* name );
GLint mglGetUniformLocation( GLuint program, const char* name );

/* framebuffers */
void mglBindFramebuffer( GLenum target, GLuint framebuffer );
void mglNamedFramebufferTexture1D( GLuint framebuffer
                                 , GLenum attachment
                                 , GLenum textarget
                                 , GLuint texture
                                 , GLint level );
void mglNamedFramebufferTexture2D( GLuint framebuffer
                                 , GLenum attachment
                                 , GLenum textarget
                                 , GLuint texture
                                 , GLint level );
void mglNamedFramebufferTexture3D( GLuint framebuffer
                                 , GLenum attachment
                                 , GLenum textarget
                                 , GLuint texture
                                 , GLint level
                                 , GLint zoffset );
void mglNamedFramebufferTextureLayer( GLuint framebuffer
                                    , GLenum attachment
                                    , GLuint texture
                                    , GLint level
                                    , GLint layer );
void mglClear( GLbitfield mask );
void mglClearBufferfv( GLenum buffer
                     , GLint drawBuffer
                     , const GLfloat* value );
void mglClearColor( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha );
void mglClearDepthf( GLfloat value );
void mglClearStencil( GLint value );
void mglDrawBuffers( GLsizei n, const GLenum* bufs );

/* pixel operations */
void mglPixelStorei( GLenum pname, GLint param );

/* rendering */
void mglDrawElements( GLenum mode, GLsizei count
                    , GLenum type, const GLvoid* indices );
void mglDrawArrays( GLenum mode, GLint first, GLsizei count );

/* viewport */
void mglViewport( GLint left, GLint bottom
                , GLsizei width, GLsizei height );

/* misc */
void mglGetIntegerv( GLenum pname, GLint* params );

/* blending */
void mglBlendFuncSeparate( GLenum srcRGB
                         , GLenum dstRGB
                         , GLenum srcAlpha
                         , GLenum dstAlpha );
void mglBlendEquationSeparate( GLenum modeRGB
                             , GLenum modeAlpha );

/* sync */
void mglFlush( void );
void mglFinish( void );
GLsync mglFenceSync( GLenum condition, GLbitfield flags );
GLenum mglClientWaitSync( GLsync sync, GLbitfield flags, GLuint64 timeout );
void mglWaitSync( GLsync sync, GLbitfield flags, GLuint64 timeout );
void mglDeleteSync( GLsync sync );

/* queries */
void mglBeginQuery( GLenum target, GLuint id );
void mglEndQuery( GLenum target );
void mglGetQueryObjectuiv( GLuint id, GLenum pname, GLuint* params );

/* not OpenGL functions */
int mglHasDirectStateAccess( void );
void mglGetScreenSize( GLsizei* width, GLsizei* height );
void mglSetScreenSize( GLsizei width, GLsizei height );

int mglQueryIsRunning( GLenum target );

void initialize_my_glstate_tls( void );

/* checking for specific GL extensions */
int has_GL_ARB_buffer_storage( void );

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif

