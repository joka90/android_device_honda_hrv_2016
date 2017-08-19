ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/honda/hrv_2016/recovery/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
	device/honda/hrv_2016/init.e1853.rc:root/init.e1853.rc \
	device/honda/hrv_2016/ueventd.e1853.rc:root/ueventd.e1853.rc \
	device/honda/hrv_2016/recovery/root/etc/recovery.fstab:root/fstab.e1853 

#device/honda/hrv_2016/prebuilt$ find . -type f | sed 's,\.\/\(.*\),    device/honda/hrv_2016/prebuilt/\1:root/\1 \\,g' > tmp
PRODUCT_COPY_FILES += \
    device/honda/hrv_2016/prebuilt/system/usr/keylayout/ada-hwsw.kl:root/system/usr/keylayout/ada-hwsw.kl \
    device/honda/hrv_2016/prebuilt/system/usr/keylayout/gpio-keys.kl:root/system/usr/keylayout/gpio-keys.kl \
    device/honda/hrv_2016/prebuilt/system/usr/keylayout/tegra-kbc.kl:root/system/usr/keylayout/tegra-kbc.kl \
    device/honda/hrv_2016/prebuilt/system/usr/icu/icudt46l.dat:root/system/usr/icu/icudt46l.dat \
    device/honda/hrv_2016/prebuilt/system/usr/idc/atmel-maxtouch.idc:root/system/usr/idc/atmel-maxtouch.idc \
    device/honda/hrv_2016/prebuilt/system/usr/idc/panjit_touch.idc:root/system/usr/idc/panjit_touch.idc \
    device/honda/hrv_2016/prebuilt/system/usr/idc/qwerty.idc:root/system/usr/idc/qwerty.idc \
    device/honda/hrv_2016/prebuilt/system/usr/idc/qwerty2.idc:root/system/usr/idc/qwerty2.idc \
    device/honda/hrv_2016/prebuilt/system/usr/idc/raydium_ts.idc:root/system/usr/idc/raydium_ts.idc \
    device/honda/hrv_2016/prebuilt/system/etc/bluetooth/audio.conf:root/system/etc/bluetooth/audio.conf \
    device/honda/hrv_2016/prebuilt/system/etc/bluetooth/auto_pairing.conf:root/system/etc/bluetooth/auto_pairing.conf \
    device/honda/hrv_2016/prebuilt/system/etc/bluetooth/bdaddr:root/system/etc/bluetooth/bdaddr \
    device/honda/hrv_2016/prebuilt/system/etc/bluetooth/blacklist.conf:root/system/etc/bluetooth/blacklist.conf \
    device/honda/hrv_2016/prebuilt/system/etc/bluetooth/input.conf:root/system/etc/bluetooth/input.conf \
    device/honda/hrv_2016/prebuilt/system/etc/bluetooth/network.conf:root/system/etc/bluetooth/network.conf \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/TIInit_10.6.15.bts:root/system/etc/firmware/TIInit_10.6.15.bts \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/nvavp_aud_ucode.bin:root/system/etc/firmware/nvavp_aud_ucode.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/nvavp_os_0ff00000.bin:root/system/etc/firmware/nvavp_os_0ff00000.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/nvavp_os_eff00000.bin:root/system/etc/firmware/nvavp_os_eff00000.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/nvavp_vid_ucode.bin:root/system/etc/firmware/nvavp_vid_ucode.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/nvavp_vid_ucode_alt.bin:root/system/etc/firmware/nvavp_vid_ucode_alt.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/ti-connectivity/wl1271-nvs.bin:root/system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin:root/system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin:root/system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    device/honda/hrv_2016/prebuilt/system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin:root/system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    device/honda/hrv_2016/prebuilt/system/etc/gps/config/GPSCConfigFile.cfg:root/system/etc/gps/config/GPSCConfigFile.cfg \
    device/honda/hrv_2016/prebuilt/system/etc/gps/config/GpsConfigFile.txt:root/system/etc/gps/config/GpsConfigFile.txt \
    device/honda/hrv_2016/prebuilt/system/etc/gps/config/pathconfigfile.txt:root/system/etc/gps/config/pathconfigfile.txt \
    device/honda/hrv_2016/prebuilt/system/etc/gps/gpsconfig.xml:root/system/etc/gps/gpsconfig.xml \
    device/honda/hrv_2016/prebuilt/system/etc/gps/patch/patch-X.0.ce:root/system/etc/gps/patch/patch-X.0.ce \
    device/honda/hrv_2016/prebuilt/system/etc/wifi/RFMD_S_3.5_TI_with_Murata_Default_PowerLimit_with_Ften_Loss120810.ini:root/system/etc/wifi/RFMD_S_3.5_TI_with_Murata_Default_PowerLimit_with_Ften_Loss120810.ini \
    device/honda/hrv_2016/prebuilt/system/etc/asound.conf:root/system/etc/asound.conf \
    device/honda/hrv_2016/prebuilt/system/etc/audio_effects.conf:root/system/etc/audio_effects.conf \
    device/honda/hrv_2016/prebuilt/system/etc/enctune.conf:root/system/etc/enctune.conf \
    device/honda/hrv_2016/prebuilt/system/etc/media_profiles.xml:root/system/etc/media_profiles.xml \
    device/honda/hrv_2016/prebuilt/system/etc/nvaudio_conf.xml:root/system/etc/nvaudio_conf.xml \
    device/honda/hrv_2016/prebuilt/system/etc/nvcamera.conf:root/system/etc/nvcamera.conf \
    device/honda/hrv_2016/prebuilt/system/etc/nvram_4329.txt:root/system/etc/nvram_4329.txt \
    device/honda/hrv_2016/prebuilt/system/etc/nvram_4330.txt:root/system/etc/nvram_4330.txt \
    device/honda/hrv_2016/prebuilt/system/etc/vold.fstab:root/system/etc/vold.fstab

$(call inherit-product-if-exists, build/target/product/full.mk)

