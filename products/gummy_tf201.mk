$(call inherit-product, device/asus/tf201/full_tf201.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)

PRODUCT_NAME := Gummy_tf201
PRODUCT_BRAND := asus
PRODUCT_DEVICE := tf201
PRODUCT_MODEL := Transformer Prime
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=tf201 \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-TF201
	
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/WW_epad/EeePad:4.0.3/IML74K/WW_epad-9.4.2.11-20120117:user/release-keys PRIVATE_BUILD_DESC="WW_epad-user 4.0.3 IML74K WW_epad-9.4.2.11-20120117 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-TF201 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/tab10/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common

