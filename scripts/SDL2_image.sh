test_deps_install SDL2 libpng jpeg

SDL2_IMG_STR=SDL2_image-2.0.1

download_and_extract http://www.libsdl.org/projects/SDL_image/release/${SDL2_IMG_STR}.tar.gz ${SDL2_IMG_STR}
# apply_patch ${SDL2_IMG_STR}-PSP

cp ../../makefiles/SDL2_Image_Makefile.psp Makefile.psp
make -f Makefile.psp -j `num_cpus`

cp -v *.a $(psp-config --psp-prefix)/lib
cp -rv SDL_image.h $(psp-config --psp-prefix)/include/SDL2