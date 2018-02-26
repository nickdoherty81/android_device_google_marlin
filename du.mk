# Inherit some common Dirty stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/marlin/device-du.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:8.1.0/OPM1.171019.016/4503492:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM1.171019.016 4503492 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
