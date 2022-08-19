#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter oneplus8 oneplus8pro oneplus8t oneplus9r,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

ACDBDATA_SYMLINKS := $(TARGET_OUT_ODM)/etc/acdbdata
$(ACDBDATA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating acdbdata symlinks: $@"
	@mkdir -p $@
	$(hide) ln -sf /vendor/etc/acdbdata/adsp_avs_config.acdb $@/adsp_avs_config.acdb

ALL_DEFAULT_INSTALLED_MODULES +=  $(ACDBDATA_SYMLINKS)
endif
