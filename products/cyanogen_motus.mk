# Inherit device configuration for motus.
$(call inherit-product, device/motorola/motus/motus.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM-only stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_motus
PRODUCT_BRAND := google
PRODUCT_DEVICE := motus
PRODUCT_MODEL := MB300
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=motus_att_us PRODUCT_DEVICE=motus BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"


PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-motus.map

# Extra Motus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/motus

# Include the Torch and VoiceDialer apps
PRODUCT_PACKAGES += \
    VoiceDialer \
    Torch

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Unofficial-CM-6.1.2-Motus-beta2

#
# Copy Motus specific prebuilt files
#
PRODUCT_COPY_FILES += vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
