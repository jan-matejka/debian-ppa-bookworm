#! /usr/bin/zsh

set -eu

KEY=${1:?}

dists=( bookworm trixie )
arches=( all amd64 )

for dist in $dists; do
  pushd -q dists/$dist
  pushd -q main
  dpkg-scanpackages --multiversion . > Packages
  xz -kzf Packages

  for arch in $arches; do
    pushd -q binary-$arch
    dpkg-scanpackages --multiversion . > Packages
    xz -kzf Packages
    popd -q
  done

  popd -q

  { cat Release.in; apt-ftparchive release . } > Release
  gpg --default-key "${KEY}" -abs -o - Release > Release.gpg
  gpg --default-key "${KEY}" --clearsign -o - Release > InRelease

  popd -q
done
