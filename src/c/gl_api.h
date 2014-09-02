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

#ifdef __cplusplus
extern "C" {
#endif

void initialize_my_glstate_tls( void );
void activate_debug_mode( void );

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif

