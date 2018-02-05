#
# Just add the following line to your device makefile:
# $(call inherit-product-if-exists, vendor/nepo/my-apps.mk)
#
# I place under the call to proprietary vendor...
#

PRODUCT_PACKAGES += \
    GoogleCamera \
    MixPlorer
