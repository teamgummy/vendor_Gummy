$(call inherit-product, device/moto/wingray/full_wingray.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)

PRODUCT_NAME := Gummy_wingray
PRODUCT_BRAND := google
PRODUCT_DEVICE := wingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=tervigon \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-WINGRAY \
    BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys" \
    PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys"


PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/wingray/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/wingray
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common

