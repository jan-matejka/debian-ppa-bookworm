KEY=2B524183A4D7D908

dist=dists/bookworm

.PHONY: build
build: index.html release

index.html: doc/README.rst

	rst2html $< > $@

.PHONY: release
release:

	zsh build/release.zsh $(KEY)
