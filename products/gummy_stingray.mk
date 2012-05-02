$(call inherit-product, device/moto/wingray/full_stingray.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)

PRODUCT_NAME := Gummy_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-STINGRAY 
	
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_ID=IML74K BUILD_FINGERPRINT=verizon/trygon/stingray:3.2.4/HLK75F/$

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-STINGRAY

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/tab10/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common

