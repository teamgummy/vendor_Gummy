$(call inherit-product, device/motorola/droid2we/droid2we.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_droid2we
PRODUCT_BRAND := google
PRODUCT_DEVICE := droid2we
PRODUCT_MODEL := DROID2 Global
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=droid2we_vzw \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-droid2we \
    BUILD_FINGERPRINT="google/soju/crespo:4.0.3/IML74K/239410:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 4.0.3 IML74K 239410 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-droid2we \
    ro.goo.version=0.9.0

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/crespo/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/droid2we
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led
