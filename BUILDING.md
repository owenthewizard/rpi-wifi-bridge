# Compiling rpi-wifi-bridge

rpi-wifi-bridge uses [Buildroot](https://buildroot.org), and you can compile it
yourself to customize things like the kernel, included packages, and much, much
more.

```bash
git clone --depth=1 --recurse-submodules --shallow-submodules https://github.com/owenthewizard/rpi-wifi-bridge.git
cd rpi-wifi-bridge/buildroot
export BR2_EXTERNAL=$PWD/../
# For RPi 0 W
make raspberrypi0w_defconfig
# make your customizations
make nconfig
# build
make
# flash to sdcard (replace sdX)
sudo dd if=output/images/sdcard.img of=/dev/sdX bs=32k oflag=dsync status=progress
```

For more information on how to use Buildroot, see the
[manual](https://buildroot.org/manual.html).
