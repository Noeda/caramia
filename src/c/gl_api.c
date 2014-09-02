#include "gl_api.h"

#ifdef MAC_OPENGL
#include <OpenGL/gl.h>
#else
#include <GL/gl.h>
#endif

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

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

glstate* my_glstate( void )
{
    return pthread_getspecific( glstate_tls );
}

