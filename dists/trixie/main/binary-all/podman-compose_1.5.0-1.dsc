-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: podman-compose
Binary: podman-compose
Architecture: all
Version: 1.5.0-1
Maintainer: Debian Python Team <team+python@tracker.debian.org>
Uploaders: Athos Ribeiro <athos@debian.org>
Homepage: https://github.com/containers/podman-compose
Standards-Version: 4.7.2
Vcs-Browser: https://salsa.debian.org/python-team/packages/podman-compose
Vcs-Git: https://salsa.debian.org/python-team/packages/podman-compose.git
Testsuite: autopkgtest
Testsuite-Triggers: ca-certificates, curl, nftables, passt, podman, slirp4netns, uidmap
Build-Depends: debhelper-compat (= 13), dh-python, dh-sequence-bash-completion, python3-setuptools, python3-all, python3-yaml, pybuild-plugin-pyproject
Package-List:
 podman-compose deb admin optional arch=all
Checksums-Sha1:
 d80bb5083d941d6f5c48d2b21ee8517a871152ae 128886 podman-compose_1.5.0.orig.tar.gz
 29ff1daccb07c31c6875fcee6ad1e31bda0220c5 4412 podman-compose_1.5.0-1.debian.tar.xz
Checksums-Sha256:
 a38b529e542e100b96a91ce759b6e05817647b1b16fe03785e19ceb5802898c2 128886 podman-compose_1.5.0.orig.tar.gz
 c632cbec2602d982a91792a595fa5e046cd90e1b6df798d0f4eff9d03bf8bcaa 4412 podman-compose_1.5.0-1.debian.tar.xz
Files:
 4421611e7d3b203116613e6f2489f2bf 128886 podman-compose_1.5.0.orig.tar.gz
 d7894985bd88b9f6fd9bb0c8c95903e9 4412 podman-compose_1.5.0-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iIsEARYKADMWIQT76B4BHrs3ymkcWR8rUkGDpNfZCAUCaLqfYhUcam1hdGVqa2Ew
MUBnbWFpbC5jb20ACgkQK1JBg6TX2QiT5wEAlwX3Lzjyv/faA41wMDxsm0otyu3g
a+ghuuE/DDizT+sBALVmRcpx//y++GUj584L+q5ypHStTvD+9n/g+e3mbhcG
=OYCt
-----END PGP SIGNATURE-----
