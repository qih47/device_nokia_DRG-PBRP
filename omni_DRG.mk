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
