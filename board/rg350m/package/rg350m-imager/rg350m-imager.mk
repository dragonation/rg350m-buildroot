#############################################################
#
# rg350m-imager
#
#############################################################

RG350M_IMAGER_VERSION = 79123c6f0c
RG350M_IMAGER_SITE = $(call github,dragonation,rg350m-imager,$(RG350M_IMAGER_VERSION))

define HOST_RG350M_IMAGER_INSTALL_CMDS
	rm -fr $(HOST_DIR)/opt/rg350m-imager
	mkdir -p $(HOST_DIR)/opt/rg350m-imager
	cp -fr $(@D)/bin $(HOST_DIR)/opt/rg350m-imager/bin
	cp -fr $(@D)/conf $(HOST_DIR)/opt/rg350m-imager/conf
	cp -fr $(@D)/res $(HOST_DIR)/opt/rg350m-imager/res
	cp -fr $(@D)/tool $(HOST_DIR)/opt/rg350m-imager/tool
	cp -f $(@D)/readme.md $(HOST_DIR)/opt/rg350m-imager/readme.md
endef

$(eval $(host-generic-package))
