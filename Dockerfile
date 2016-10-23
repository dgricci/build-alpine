## Dockerfile for compilation environment : C/C++ and make
FROM dgricci/alpine:3.4.4
MAINTAINER Didier Richard <didier.richard@ign.fr>

# g++, gcc and company !
RUN \
    apk update && \
    apk add --update \
        gcc \
        g++ \
        libc-dev \
        autoconf \
        automake \
        bison \
        flex \
        libtool \
        gettext \
        make \
        cmake \
    && \
    rm -rf /var/cache/apk/*

