BZIP2_VERSION=1.0.6

download_and_extract https://sourceforge.net/projects/bzip2/files/bzip2-$BZIP2_VERSION.tar.gz bzip2-$BZIP2_VERSION
apply_patch bzip2-$BZIP2_VERSION-PSP
run_make -j `num_cpus`
