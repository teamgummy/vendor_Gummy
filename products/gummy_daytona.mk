$(call inherit-product, device/motorola/daytona/daytona.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_daytona
PRODUCT_BRAND := google
PRODUCT_DEVICE := daytona
PRODUCT_MODEL := DROIDX2
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=daytona_vzw \
    BUILD_ID=IMM76D \
    BUILD_FINGERPRINT="google/soju/crespo:4.0.3/IML74K/239410:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 4.0.3 IML74K 239410 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-DAYTONA 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/Non-QHD/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/daytona
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led
