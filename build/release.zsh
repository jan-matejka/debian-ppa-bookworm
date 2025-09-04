#! /usr/bin/zsh

set -eu

KEY=${1:?}

dists=( bookworm trixie )
arches=( all amd64 )

for dist in $dists; do
  dist_dir=dists/$dist
  comp_dir=$dist_dir/main
  dpkg-scanpackages --multiversion $comp_dir > $comp_dir/Packages
  xz -kzf $comp_dir/Packages

  for arch in $arches; do
    arch_dir=$comp_dir/binary-$arch
    dpkg-scanpackages --multiversion $arch_dir > $arch_dir/Packages
    xz -kzf $arch_dir/Packages
  done

  { cat $dist_dir/Release.in; apt-ftparchive release $dist_dir } \
    > $dist_dir/Release
  gpg --default-key "${KEY}" -abs -o - $dist_dir/Release \
    > $dist_dir/Release.gpg
  gpg --default-key "${KEY}" --clearsign -o - $dist_dir/Release \
    > $dist_dir/InRelease
done
