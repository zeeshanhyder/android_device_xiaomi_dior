$(call inherit-product, device/xiaomi/dior/device_dior.mk)
$(call inherit-product-if-exists, vendor/xiaomi/dior/dior-vendor.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := Redmi Note 4G
PRODUCT_NAME := cm_dior

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
