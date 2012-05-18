PRODUCT_NAME := Gummy
PODUCT_BRAND := Gummy
PRODUCT_DEVICE := generic


PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=Kejar31

# stadard gummy packeages 
PRODUCT_PACKAGES := \
    Camera \
    Gallery \
    SoundRecorder \
    FileManager \
    Spearmint \
    AppWidgetPicker \
    Superuser \
    Superuser.apk \
    su


# Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    GummyBeam \
    HoloSpiralWallpaper \
    NoiseField \
    MagicSmokeWallpapers \
    Gummypapers \
    Galaxy4 

#CM apps - Thanks to the great team over at CyanogenMod we have these awesome apps :)
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf 

# T-Mobile theme engine
include vendor/Gummy/products/themes_common.mk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/Gummy/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/Gummy/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/Gummy/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/Gummy/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/Gummy/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/Gummy/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/Gummy/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/Gummy/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/Gummy/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/Gummy/prebuilt/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/Gummy/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/Gummy/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/Gummy/prebuilt/common/bin/sysinit:system/bin/sysinit \

	# Propiortary applications
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/Gummy/prebuilt/common/app/RomToolbox.apk:system/app/RomToolbox.apk \
    vendor/Gummy/prebuilt/common/app/RootBrowser.apk:system/app/RootBrowser.apk \
    vendor/Gummy/prebuilt/common/etc/.root_browser:system/etc/.root_browser

# Google DNS servers and host file
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/Gummy/prebuilt/common/etc/hosts:system/etc/hosts

# Cron schedual 
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/Gummy/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/Gummy/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/Gummy/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/Gummy/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/Gummy/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/Gummy/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/Gummy/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/Gummy/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Term binarry for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/Gummy/proprietary/Term.apk:system/app/Term.apk \
    vendor/Gummy/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so 

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/Gummy/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/Gummy/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/Gummy/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/Gummy/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/Gummy/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/Gummy/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/Gummy/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/Gummy/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/Gummy/prebuilt/common/xbin/backup:system/xbin/backup \
    vendor/Gummy/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/Gummy/prebuilt/common/xbin/btool:system/xbin/btool \
    vendor/Gummy/prebuilt/common/xbin/busybox:system/xbin/busybox \
    vendor/Gummy/prebuilt/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/Gummy/prebuilt/common/xbin/gdb:system/xbin/gdb \
    vendor/Gummy/prebuilt/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/Gummy/prebuilt/common/xbin/market_history:system/xbin/market_history \
    vendor/Gummy/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/Gummy/prebuilt/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/Gummy/prebuilt/common/xbin/run_backup:system/xbin/run_backup \
    vendor/Gummy/prebuilt/common/xbin/run_restore:system/xbin/run_restore \
    vendor/Gummy/prebuilt/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/Gummy/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/Gummy/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/Gummy/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/Gummy/prebuilt/common/xbin/zipalign:system/xbin/zipalign 


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240 \
    wifi.supplicant_scan_interval=180 \
    ro.goo.version=123
















