LOCAL_PATH:= $(call my-dir)

# ========================================================
# less
# ========================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	brac.c charset.c ch.c cmdbuf.c command.c cvt.c decode.c edit.c \
	filename.c forwback.c help.c ifile.c input.c jump.c \
	line.c linenum.c lsystem.c main.c mark.c optfunc.c option.c \
	opttbl.c os.c output.c pattern.c position.c prompt.c \
	screen.c search.c signal.c tags.c ttyin.c version.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)
LOCAL_CFLAGS += \
	-Wno-error \
	-DHAVE_CONFIG_H \
	-DPROGRAM=\"less\" \
	-DPACKAGE=\"less\" \
	-DCONF_HOSTTYPE=\"arm\" \
	-DCONF_OSTYPE=\"android-eabi\" \
	-DCONF_MACHTYPE=\"arm-android-eabi\" \
	-DCONF_VENDOR=\"unknown\" \
	-DSYSDIR=\"/system/etc\" \
	-DBINDIR=\"/system/xbin\"
LOCAL_SHARED_LIBRARIES += \
	libncurses
LOCAL_STATIC_LIBRARIES += \
	libbuiltins

LOCAL_MODULE := less
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)

ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
    $(ALL_MODULES.$(LOCAL_MODULE).INSTALLED)

# ========================================================
include $(call all-makefiles-under,$(LOCAL_PATH))
