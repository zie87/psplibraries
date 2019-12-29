test_deps_install SDL libpng jpeg

download_and_extract http://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.tar.gz SDL2_image-2.0.5
apply_patch SDL2_image-2.0.5-PSP
LIBPNG_CFLAGS="$CFLAGS -I$(psp-config --psp-prefix)/include/libpng15/" LDFLAGS="-lpspirkeyb" run_autogen_build --disable-webp --with-sdl-prefix=$(psp-config --psp-prefix)

