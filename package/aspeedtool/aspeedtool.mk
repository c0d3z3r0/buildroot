################################################################################
#
# aspeedtool
#
################################################################################

ASPEEDTOOL_VERSION = master
ASPEEDTOOL_SITE = $(call github,c0d3z3r0,aspeedtool,$(ASPEEDTOOL_VERSION))
ASPEEDTOOL_LICENSE = GPL-2.0
ASPEEDTOOL_LICENSE_FILES = LICENSE

define ASPEEDTOOL_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) PREFIX=/usr -C $(@D)
endef

define ASPEEDTOOL_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/aspeedtool $(TARGET_DIR)/usr/bin/aspeedtool
endef

$(eval $(generic-package))
