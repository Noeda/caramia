#include "gl_api.h"
#include <stdio.h>

void activate_debug_mode( void )
{
    /* no debug mode on OS X (yet) */
    /* You can probably just switch to gl_debug_mode.c for OS X when they
     * do have it. */
    fprintf(stderr, "No OpenGL debug mode available for this platform.\n");
}
