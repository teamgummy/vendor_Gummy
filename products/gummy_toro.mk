$(call inherit-product, device/samsung/toro/full_toro.mk)
$(call inherit-product, vendor/Gummy/products/common.mk)
$(call inherit-product, vendor/Gummy/products/common_phone.mk)

PRODUCT_NAME := Gummy_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mysid \
    BUILD_ID=IMM76D \
    BUILD_DISPLAY_ID=Gummy-TORO-1.2.0 \
    BUILD_FINGERPRINT="google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys" \
    PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.gsm.data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.gsm.2nd_data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    camera.flash_off=0 \
    dalvik.vm.lockprof.threshold=500 \
    ro.goo.developerid=TeamGummy \
    ro.goo.rom=Gummy-TORO 

PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/samsung/toro/proprietary/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/samsung/toro/proprietary/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/samsung/toro/proprietary/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \
    vendor/Gummy/prebuilt/toro/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/toro
PRODUCT_PACKAGE_OVERLAYS += vendor/Gummy/overlay/common

