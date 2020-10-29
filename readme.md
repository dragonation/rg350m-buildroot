# RG350M buildroot (new userland, old kernel)

This buildroot can be used to build RG350M cross-compilation toolchain and the OS image, rebased on the od-contrib's repo. The purpose of the project is to make a minimal stable and clean system with newer userland and sdk. And remove packages which are not used in the device to keep the project clean and easy to handle.

## Status

Currently, SDL2 is buggy with screen flickering.

## Build toolchain

First, clone the repository:

~~~bash
git clone https://github.com/dragonation/rg350m-buildroot.git
cd rg350m-buildroot
~~~

Then, run the command below to make image and sdk:

~~~bash
BR2_JLEVEL=0 ./make-rg350m.sh
~~~

The image and sdk will saved to:

~~~
output_rg350m/images/
~~~

This image can be flashed directly to the system SD card, e.g. using [balenaEtcher].

[balenaEtcher]: https://www.balena.io/etcher/

## Credits

This repository started as a fork of <https://github.com/od-contrib/buildroot-rg350-old-kernel>
