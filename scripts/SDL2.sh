SDL2_STR=SDL2-2.0.5

download_and_extract http://www.libsdl.org/release/${SDL2_STR}.tar.gz ${SDL2_STR}
make -f Makefile.psp -j `num_cpus`

cp -v *.a $(psp-config --psp-prefix)/lib
cp -rv include/ $(psp-config --psp-prefix)/include/SDL2