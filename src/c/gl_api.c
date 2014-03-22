#include "gl_api.h"
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

typedef struct s_glstate
{
    GLboolean debug_mode_on;
} glstate;


static pthread_mutex_t opengl_debug_mutex = PTHREAD_MUTEX_INITIALIZER;
static void GLAPIENTRY opengl_debug_callback( GLenum source
                                            , GLenum type
                                            , GLuint id
                                            , GLenum severity
                                            , GLsizei length
                                            , const char* message
                                            , const GLvoid* user_param );

static pthread_mutex_t glstate_mutex = PTHREAD_MUTEX_INITIALIZER;
static pthread_key_t glstate_tls;
static int glstate_tls_initialized = 0;

static void initialize_my_glstate_local( void );

static void initialize_glstate( glstate* state )
{
    memset( state, 0, sizeof(glstate) );
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

const char* debug_output_enabled_str =
    "Debug output enabled.";

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

