################################################################################
#
# mdns-repeater
#
################################################################################

MDNS_REPEATER_VERSION = 1.11
MDNS_REPEATER_SITE = $(call github,kennylevinsen,mdns-repeater,$(MDNS_REPEATER_VERSION))
MDNS_REPEATER_LICENSE = GPL-2.0
MDNS_REPEATER_LICENSE_FILES = LICENSE.txt

define MDNS_REPEATER_BUILD_CMDS
	sed -i 's|" HGVERSION "|$(MDNS_REPEATER_VERSION)|' $(@D)/mdns-repeater.c
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define MDNS_REPEATER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/mdns-repeater $(TARGET_DIR)/usr/sbin
endef

$(eval $(generic-package))
