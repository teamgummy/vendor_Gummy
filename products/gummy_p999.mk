$(call inherit-product, device/lge/p999/p999.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_p999
PRODUCT_DEVICE := p999
PRODUCT_MODEL := LG-P999 
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_lge_star \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-P999 \
    BUILD_FINGERPRINT="lge/lge_lge_star/p999:2.3.3/GRI40/lgp999-V21e.41fdc8a2:user/release-keys" \
    PRIVATE_BUILD_DESC="lge_star-user 2.3.3 GRI40 41fdc8a2 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-P999 
    ro.cm.version=9.0.0-gummy


PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/Non-QHD-Non-Moto/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/p999
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led


