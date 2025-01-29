################################################################################
#
# AESD-ASSIGNMENTS
#
################################################################################

# Fixed version reference
AESD_ASSIGNMENTS_VERSION = 08bdbd3ff6ab4a0c211c49381d0aa811fc76f67a
# SSH repository URL
AESD_ASSIGNMENTS_SITE = git@github.com:Ekpenyong-Esu/Embedded_linux.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# Corrected installation commands
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop.sh $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))