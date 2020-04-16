#ifndef SOCKET_H_INCLUDED
#define SOCKET_H_INCLUDED

#include <winsock2.h>
#include <ws2tcpip.h>

typedef unsigned short sa_family_t;

/* Supposedly in afunix.h but currently MinGW does not support */
struct sockaddr_un {
    sa_family_t sun_family;               /* AF_UNIX */
    char        sun_path[108];            /* Pathname */
};

#endif // SOCKET_H_INCLUDED
