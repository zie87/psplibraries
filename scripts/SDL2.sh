download_and_extract http://www.libsdl.org/release/SDL2-2.0.5.tar.gz SDL2-2.0.5
make -f Makefile.psp -j `num_cpus`

cp -v lib/*.a $(psp-config --psp-prefix)/lib
cp -rv include/ $(psp-config --psp-prefix)/include/SDL2