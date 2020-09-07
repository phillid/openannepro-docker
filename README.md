# What?

Just a Dockerfile for an image to build [OpenAnnePro]'s firmware.

## Build

E.g.

	docker build -t annepro2-build .


## Use/run

E.g.

	cd /path/to/annepro2-shine
	docker run --rm -it -u "$(id -u):$(id -g)" -w /src -v "$PWD:/src" annepro2-build
	[I have no name!@b448316196b9 src]$ make
	...
	Creating build/annepro2-shine.hex
	Creating build/annepro2-shine.bin
	Creating build/annepro2-shine.dmp

	   text    data     bss     dec     hex filename
	   7596      52    8136   15784    3da8 build/annepro2-shine.elf
	Creating build/annepro2-shine.list

	Done


Or even something like:

	docker run --rm -it -u "$(id -u):$(id -g)" -w /src -v "/path/to/AnnePro2-Shine:/src" annepro2-build make
	docker run --rm -it -u "$(id -u):$(id -g)" -w /src -v "/path/to/qmk_firmware:/src" annepro2-build make

Up to you.

[OpenAnnePro]: https://openannepro.github.io/
