GIFLIB_VERSION=4.2.3
download_and_extract "http://sourceforge.net/projects/giflib/files/giflib-4.x/giflib-$GIFLIB_VERSION.tar.bz2"  giflib-$GIFLIB_VERSION
## Patch
cp ../../patches/config.sub ./config.sub
CFLAGS="-ffast-math -fsigned-char -G0" run_configure
cd lib
run_make -j `num_cpus`