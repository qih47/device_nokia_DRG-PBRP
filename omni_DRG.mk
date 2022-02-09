# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from DRG device
$(call inherit-product, device/nokia/DRG/device.mk)

# Inherit some common PitchBlack stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := DRG

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := DRG
PRODUCT_NAME := omni_DRG
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := 6.1 Plus
PRODUCT_MANUFACTURER := Nokia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Dragon_00WW \
    PRIVATE_BUILD_DESC="raven-user 12 SD1A.210817.036 7805805 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.017/7955197:user/release-keys
