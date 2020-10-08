# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := LG Realm
PRODUCT_NAME := cm_w5c

$(call inherit-product, device/lge/w5c/full_w5c.mk)
