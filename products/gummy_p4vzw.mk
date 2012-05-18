$(call inherit-product, device/samsung/p4vzw/p4vzw.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)

PRODUCT_NAME := Gummy_p4vzw
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4vzw
PRODUCT_MODEL := SCH-I905
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=SCH-I905 \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-p4vzw-1.2.0
	
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I905 BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/SCH-I905/SCH-I905:3.1/HMJ37/EH04:user/release-keys PRIVATE_BUILD_DESC="SCH-I905-user 3.1 HMJ37 EH04 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-p4vzw

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/tab10/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/p4-common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led
