################################################################################
#
# aspeed bootloader
#
################################################################################

ASPEEDBOOT_VERSION = master
ASPEEDBOOT_SITE = $(call github,c0d3z3r0,aspeedboot,$(ASPEEDBOOT_VERSION))
ASPEEDBOOT_LICENSE = BSD-3-Clause
ASPEEDBOOT_LICENSE_FILES = licenses/LICENSE.BSD-3-Clause

ASPEEDBOOT_INSTALL_TARGET = NO
ASPEEDBOOT_INSTALL_IMAGES = YES

define ASPEEDBOOT_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) CROSS_COMPILE=$(TARGET_CROSS)
endef

define ASPEEDBOOT_INSTALL_IMAGES_CMDS
	cp $(@D)/boot.bin $(BINARIES_DIR)
endef

$(eval $(generic-package))
