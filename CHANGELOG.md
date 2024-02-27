# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]
### Changed
~~- Root filesystem is now readonly.~~

## v5 Beta - 2024-02-27
### Added
- Raspberry Pi 2 config *should* now support 2/3/3+/4.
-  Add status LED control:
  - on solid: booting
  - on heartbeat: booted and associated with SSID
  - on timer: booted but not associated with SSID (check wifi?)
- Add fake-hwclock service.

### Changed
- Updated buildroot to 2023.11.x
- `S02hostname` now has proper service structure.
- `S70dhcprelay` -> `S80dhcprelay`
- Fix sending hostname to DHCP server.
- Change firmware to cut-down.
- Disable Bluetooth and use ttyAMA0 for console.
- Set partition type to 0x83 (Linux ext4).
- Make root password echo bold and blink after build.

## v4 Beta - 2021-07-15
### Added
- Raspberry Pi 2/3 config.

### Changed
- Updated buildroot to 2021.05.x

## v3 Beta - 2021-01-05
### Added
- Added COPYING.linux and LICENCE.broadcom to boot partition.
- `udhcpc` now updates the DNS server with the hostname.

### Changed
- Use cut-down firmware for faster boot.
- Hostname is automatically set to RPi-{serial} shortly after boot.

## v2 Beta - 2021-01-05
### Added
- `/etc/modprobe.d/raspi-blacklist.conf` - blacklist camera modules for faster boot.
- Utilize `eudev` for automatic device detection and module loading.
- Added `busybox` config fragment (`dhcprelay`).
- A random password is now set at build time (`post-build.sh`).

### Changed
- Updated buildroot to 2020.11.x.
- Replaced `mdns-repeater` with `avahi-daemon`, which is included in upstream buildroot.
- Config files renamed: `rpi_wifi_bridge` -> `raspberrypi0w`.
- Minor edits to network interfaces config.
- Temporarily reverted rootfs to ext4.
- Disabled audio by default.

### Removed
- Removed `parprouted` - merged upstream.
- Removed `/etc/inittab` modification.
- Removed explicit module loading.
- Removed default password warning.
- Removed device tree overlays.

## v1 Beta - 2020-07-05
### Added
- Initial beta.
