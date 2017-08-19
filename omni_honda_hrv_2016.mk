# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

# Inherit device configuration
$(call inherit-product, device/honda/hrv_2016/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_honda_hrv_2016
PRODUCT_DEVICE := hrv_2016
PRODUCT_BRAND := honda
PRODUCT_MODEL := hrv_2016
PRODUCT_MANUFACTURER := honda

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Honda/e1853/e1853:4.0.4/0C.091.01.1123/ada3s.20160125.135340:user/release-keys" \
    PRIVATE_BUILD_DESC="e1853-user 4.0.4 0C.091.01.1123 ada3s.20160125.135340 release-keys"
    
