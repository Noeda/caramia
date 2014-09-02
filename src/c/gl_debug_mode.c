#define GL_GLEXT_PROTOTYPES
#include "gl_api.h"
#include <GL/gl.h>
#include <GL/glext.h>
#include <pthread.h>
#include <stdio.h>
#include <string.h>

const char* debug_output_enabled_str =
    "Debug output enabled.";

static pthread_mutex_t opengl_debug_mutex = PTHREAD_MUTEX_INITIALIZER;
static void GLAPIENTRY opengl_debug_callback( GLenum source
                                            , GLenum type
                                            , GLuint id
                                            , GLenum severity
                                            , GLsizei length
                                            , const char* message
                                            , const GLvoid* user_param );

void activate_debug_mode( void )
{
    glstate* state = my_glstate();

    if ( state->debug_mode_on == GL_TRUE ) {
        return;
    }

    /* A sanity check that these symbols are present. Does not actually
     * guarantee that the extension is available. */
    if ( !glDebugMessageCallback ) {
        return;
    }

    glDebugMessageCallback( opengl_debug_callback, 0 );
    glDebugMessageControl( GL_DONT_CARE
                            , GL_DONT_CARE
                            , GL_DONT_CARE
                            , 0
                            , NULL
                            , GL_TRUE );
    glDebugMessageInsert( GL_DEBUG_SOURCE_APPLICATION
                        , GL_DEBUG_TYPE_OTHER
                        , 0
                        , GL_DEBUG_SEVERITY_LOW
                        , strlen( debug_output_enabled_str )
                        , debug_output_enabled_str );
    glEnable( GL_DEBUG_OUTPUT );

    state->debug_mode_on = GL_TRUE;
}

static void GLAPIENTRY opengl_debug_callback( GLenum source
                                            , GLenum type
                                            , GLuint id
                                            , GLenum severity
                                            , GLsizei length
                                            , const char* message
                                            , const GLvoid* user_param )
{
    ((void) length);
    ((void) user_param);

    pthread_mutex_lock( &opengl_debug_mutex );
    switch ( severity ) {
        case GL_DEBUG_SEVERITY_HIGH_ARB:
            fprintf(stderr, "[HIGH, ");
            break;
        case GL_DEBUG_SEVERITY_MEDIUM_ARB:
            fprintf(stderr, "[MEDIUM, ");
            break;
        case GL_DEBUG_SEVERITY_LOW_ARB:
            fprintf(stderr, "[LOW, ");
            break;
    }
    switch ( source ) {
        case GL_DEBUG_SOURCE_API_ARB:
            fprintf(stderr, "API, ");
            break;
        case GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB:
            fprintf(stderr, "WINDOW_SYSTEM, ");
            break;
        case GL_DEBUG_SOURCE_SHADER_COMPILER_ARB:
            fprintf(stderr, "SHADER_COMPILER, ");
            break;
        case GL_DEBUG_SOURCE_THIRD_PARTY_ARB:
            fprintf(stderr, "THIRD_PARTY, ");
            break;
        case GL_DEBUG_SOURCE_APPLICATION_ARB:
            fprintf(stderr, "APPLICATION, ");
            break;
        case GL_DEBUG_SOURCE_OTHER_ARB:
            fprintf(stderr, "OTHER, ");
            break;
        default:
            fprintf(stderr, "UNKNOWN, ");
    }
    switch ( type ) {
        case GL_DEBUG_TYPE_ERROR_ARB:
            fprintf(stderr, "ERROR] ");
            break;
        case GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB:
            fprintf(stderr, "BEHAVIOR] ");
            break;
        case GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB:
            fprintf(stderr, "UNDEFINED] ");
            break;
        case GL_DEBUG_TYPE_PORTABILITY_ARB:
            fprintf(stderr, "PORT] ");
            break;
        case GL_DEBUG_TYPE_PERFORMANCE_ARB:
            fprintf(stderr, "PERF] ");
            break;
        case GL_DEBUG_TYPE_OTHER_ARB:
            fprintf(stderr, "OTHER] ");
    }
    fprintf(stderr, "(%u) %s\n", id, message);
    pthread_mutex_unlock( &opengl_debug_mutex );
}

