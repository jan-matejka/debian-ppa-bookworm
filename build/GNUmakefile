KEY=837EED10F97A36A1

dist=dists/bookworm

.PHONY: build
build: index.html release

index.html: doc/README.rst

	rst2html $< > $@

.PHONY: release
release:

	zsh build/release.zsh $(KEY)
