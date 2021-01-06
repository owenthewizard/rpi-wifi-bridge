# rpi-wifi-bridge Configuration

Before using rpi-wifi-bridge, you will want to make a few changes to some config
files. See the [overlay-boot](overlay-boot) and [overlay-root](overlay-root)
directories for all available customizations. Even more are available by
compiling yourself, see [BUILDING.md](BUILDING.md).

## 1. `wpa_supplicant.conf` in [overlay-root/etc](overlay-root/etc)

You MUST replace the example values in `wpa_supplicant.conf` in order to connect
to your Wi-Fi network. The values should be self-explanatory, just
replace `country=us` with your two-letter country code (e.g. `country=gb`) and
fill in your SSID and pre-shared key.

## 2. `hostname` in [overlay-root/etc](overlay-root/etc)

You may optionally replace `RPi-WiFi-Bridge` with a hostname of your choosing.

---

You can of course modify any of the other files in [overlay-boot](overlay-boot)
and [overlay-root](overlay-root) and even add your own.

**If you add files to [overlay-boot](overlay-boot), make sure to modify
board/rpi_wifi_bridge/genimage.cfg accordingly!**
