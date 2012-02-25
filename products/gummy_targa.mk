$(call inherit-product, device/motorola/targa/device_targa.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_targa
PRODUCT_BRAND := google
PRODUCT_DEVICE := targa
PRODUCT_MODEL := XT875 
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=targa_vzw \
    BUILD_ID=IML74K \
    BUILD_DISPLAY_ID=Gummy-TARGA 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/crespo/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/lte
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_softkeys


