#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter angler marlin sailfish,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
ifeq ($(TARGET_DEVICE),angler)
LOCAL_MODULE := GoogleCameraNX1
LOCAL_SRC_FILES := app/GoogleCameraNX1/GoogleCameraNX1.apk
else
LOCAL_MODULE := GoogleCamera
LOCAL_SRC_FILES := app/GoogleCamera/GoogleCamera.apk
endif
LOCAL_MODULE_OWNER := platform
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/priv-app/
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := MixPlorer
LOCAL_MODULE_OWNER := platform
LOCAL_SRC_FILES := app/MixPlorer/mixplorer.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
include $(BUILD_PREBUILT)

endif
