# rpi-wifi-bridge

A minimal buildroot image to turn the Raspberry Pi into a Wi-Fi to Ethernet
bridge. 

## Quick Start

1. Download the latest sdcard.img for your Pi from the
[releases](https://github.com/owenthewizard/rpi-wifi-bridge/releases) page and
flash it to a micro SD card.
2. Mount the F2FS root filesystem from the micro SD card and modify the config
files according to [CONFIG.md](CONFIG.md). This can also be done on the Pi
itself if you have a serial console available:
```bash
mount / -o remount,rw
vi /etc/wpa_supplicant.conf
vi /etc/hostname
...
mount / -o remount,ro
reboot
```
3. (Re)boot the Pi and connect your Ethernet client. Observe that it now has
network connectivity!

## Advanced Usage

You can leverage [buildroot](https://github.com/buildroot/buildroot)'s extreme
flexibility to make all sort of customizations to the image. See
[BUILDING.md](BUILDING.md) for more info.

## How It Works

See [BridgeNetworkConnectionsProxyArp](https://wiki.debian.org/BridgeNetworkConnectionsProxyArp)
on the Debian Wiki.

## Contributing

Pull requests are always welcome.

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall
be licensed under the terms of the [GNU General Public License](LICENSE.md),
either version 3 of the License, or (at your option) any later version.

## Versioning

This project is currently in a pre-release stage. Final versioning scheme is
TBD.

Changes are documented in the [Changelog](CHANGELOG.md).


## Authors

See [the list of contributors](https://github.com/owenthewizard/stubby/contributors).

## License

Subject to the below exceptions, code is released under the GNU General Public
License, version 3 or (at your option) any later version. See also the
[Buildroot license notice](https://github.com/buildroot/buildroot/blob/master/COPYING)
for more nuances about the meaning of this license.

Patches are not covered by this license. Instead, they are covered by the
license of the software to which the patches are applied.

See [LICENSE.md](LICENSE.md) for a copy of the GNU General Public License
version 3.0.
