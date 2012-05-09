$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sojus \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-CRESPO4G-1.2.0 \
    BUILD_FINGERPRINT="google/sojus/crespo4g:2.3.7/GWK74/185293:user/release-keys" \
    PRIVATE_BUILD_DESC="sojus-user 2.3.7 GWK74 185293 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-CRESPO4G 
	
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/crespo/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/crespo4g
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led

