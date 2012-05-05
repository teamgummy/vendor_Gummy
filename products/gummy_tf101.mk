$(call inherit-product, device/asus/tf101/full_tf101.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)

PRODUCT_NAME := Gummy_tf101
PRODUCT_BRAND := asus
PRODUCT_DEVICE := tf101
PRODUCT_MODEL := EPAD
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=US_epad \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-TF101
	
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=US_epad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.0.3/IML74K/US_epad-9.2.1.11-20120221:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.0.3 IML74K US_epad-9.2.1.11-20120221 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-TF101 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Gummy/prebuilt/tab10/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/no_led

