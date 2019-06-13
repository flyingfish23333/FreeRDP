#!/bin/bash

mkdir -p build
cd build/

export OPENSSL_ROOT_DIR=/usr/local/ssl/
cmake   -DCMAKE_BUILD_TYPE=Release      \
        -DTARGET_ARCH=ARM       \
        -DARM_FP_ABI=hard       \
        -DWITH_SERVER=off       \
        -DWITH_XRENDER=off      \
        -DBUILD_TESTING=off     \
        -DWITH_DIRECTFB=off     \
        -DWITH_PCSC=off         \
        -DCHANNEL_URBDRC_CLIENT=off     \
        -DWITH_SSE2=off         \
        -DWITH_JPEG=off         \
        -DWITH_NEON=on          \
        -DWITH_CUPS=off         \
        -DWITH_ALSA=on          \
        -DWITH_PULSE=on         \
        -DWITH_XCURSOR=on       \
        -DWITH_XEXT=off         \
        -DWITH_XV=off           \
        -DWITH_FFMPEG=off       \
        -DWITH_SAMPLE=off       \
        -DWITH_XINERAMA=on      \
        -DWITH_GSTREAMER=off    \
        -DSTATIC_CHANNELS=on            \
        -DBUILD_SHARED_LIBS=off         \
        -DWITH_MANPAGES=off     \
        -DCMAKE_INSTALL_PREFIX:PATH=/opt/remmina_devel/freerdp-1.1      \
        ../

cd -