$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxysmtd
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IML74K \
    BUILD_DISPLAY_ID=Gummy-GALAXYSMTD \
    PRODUCT_NAME=GT-I9000 \
    TARGET_DEVICE=GT-I9000 \
    BUILD_ID=IML74K BUILD_FINGERPRINT="google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-GALAXYSMTD \
    ro.goo.version=0.8.0 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/crespo/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/galaxysmtd
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/gsm
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led
