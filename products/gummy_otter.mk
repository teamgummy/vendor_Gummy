$(call inherit-product, device/amazon/otter/full_otter.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)

PRODUCT_NAME := Gummy_otter
PRODUCT_BRAND := Android
PRODUCT_DEVICE := otter
PRODUCT_MODEL := Amazon Kindle Fire
PRODUCT_MANUFACTURER := Amazon

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=otter \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-OTTER-1.2.6 \
    BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.3/IML77/239789:user/release-keys" \
    PRIVATE_BUILD_DESC="tervigon-user 4.0.3 IML77 239789 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-OTTER 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/tab7/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led

