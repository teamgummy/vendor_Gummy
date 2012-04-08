$(call inherit-product, device/samsung/showcasemtd/full_showcasemtd.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_showcasemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := showcasemtd
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-SHOWCASEMTD \
    PRODUCT_NAME=SCH-I500 \
    TARGET_DEVICE=SCH-I500 \
    BUILD_ID=IML74K BUILD_FINGERPRINT="google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-SHOWCASEMTD \
    ro.goo.version=0.9.0 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/mesmerizemtd/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/mesmerizemtd/Mms.apk:system/app/Mms.apk \
    vendor/Gummy/prebuilt/mesmerizemtd/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/fascinatemtd
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led

