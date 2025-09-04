#! /usr/bin/zsh

set -eu

KEY=${1:?}

dist=dists/bookworm
arches=( all amd64 )

pushd -q $dist
rm -f Release Release.gpg InRelease

pushd -q main
dpkg-scanpackages --multiversion . | gzip -c - > Packages.gz

for arch in $arches; do
  pushd -q binary-$arch
  dpkg-scanpackages --multiversion . | gzip -c - > Packages.gz
  popd -q
done

popd -q

apt-ftparchive release . > Release
gpg --default-key "${KEY}" -abs -o - Release > Release.gpg
gpg --default-key "${KEY}" --clearsign -o - Release > InRelease
