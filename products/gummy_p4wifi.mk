$(call inherit-product, device/samsung/p4wifi/p4wifi.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)

PRODUCT_NAME := Gummy_p4wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4wifi
PRODUCT_MODEL := GT-P7510
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=GT-P7510 \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-p4wifi
	
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:3.2/HTJ85B/UEKMM:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 3.2 HTJ85B UEKMM release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-p4wifi 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/tab10/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/p4-common
