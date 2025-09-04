KEY=837EED10F97A36A1

.PHONY: build
build: index.html

index.html: doc/README.rst

	rst2html $< > $@

release:

	dpkg-scanpackages --multiversion . > Packages
	gzip -k -f Packages

	apt-ftparchive release . > Release
	gpg --default-key "${KEY}" -abs -o - Release > Release.gpg
	gpg --default-key "${KEY}" --clearsign -o - Release > InRelease
