download_and_extract http://www.libsdl.org/release/SDL2-2.0.8.tar.gz SDL2-2.0.8
make -f Makefile.psp -j `num_cpus`

cp -v *.a $(psp-config --psp-prefix)/lib
cp -rv include/ $(psp-config --psp-prefix)/include/SDL2