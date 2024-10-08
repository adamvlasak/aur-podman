prepare:
	mkdir -p packages

run: prepare
	podman run -ti --rm -v "${PWD}/packages":/build packaging:latest bash

build:
	podman build -t packaging .
