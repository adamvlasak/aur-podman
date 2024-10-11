prepare:
	mkdir -p packages

run: prepare
	podman run -ti --rm -v "${PWD}/packages":/home/pacman/build:U packaging:latest bash

build:
	podman build -t packaging .
