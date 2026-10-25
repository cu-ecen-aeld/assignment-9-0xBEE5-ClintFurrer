# define where to pull the source files
AESDCHAR_VERSION = 14e5d8485484ff3165d9d1fdc8421cda6a1ddd7c
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignment-3-0xBEE5-ClintFurrer.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

# Group BOTH driver directories together so Buildroot compiles them at once
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/bin/aesdchar_load
	$(INSTALL) -D -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/bin/aesdchar_unload

endef

$(eval $(kernel-module))
$(eval $(generic-package))
