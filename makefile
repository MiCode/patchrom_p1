#
# Makefile for p1
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_p1.zip

#
local-miui-modified-apps := MiuiSystemUI MiuiHome Mms Phone Settings ThemeManager

# All apps from original ZIP, but has smali files chanded
local-modified-apps := HwCamera SettingsProvider

# All apks from MIUI
local-miui-removed-apps     := SettingsProvider MediaProvider 

# All apps need to be removed from original ZIP file
local-remove-apps := AccountAgent ApkBatchInstall ContactsExt Galaxy4 Gallery2 Hispace.apk \
	HandWritingSimpPack Hispace HoloSpiralWallpaper HuaweiSecurityGuard HuaweiSyncClient \
	HwAppIconsBoxy HwAppIconsBreeze HwBeyondTheSkyTheme HwCalendar3D HwCloudDrive HwDLNA \
	HwDawnTheme_small HwEmail3D HwFlashlight HwMms HwMusicWidget3D HwPhotoAlbumWidget3D \
	HwSoundRecorder HwUnlock3D HwWallpaper HwWeatherClock3D MyCalendar MyEmail PhaseBeam \
	PhoneFinder PinyinPack PotterUnlock ProjectMenuAct Protips PushService Readme HwLauncher5 \
	HwLauncher3D AllBackup HwIME MagicSmokeWallpapers HwGPMS HwOUC MMITest_II MagicSmokeWallpapers \
	MediaCenter NoiseField NotePad RootExplorer Superuser SystemUI ToolBox TotemWeather VideoEditor

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	#rm -rf $(ZIP_DIR)/system/cdrom
	#rm $(ZIP_DIR)/system/xbin/su
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/Generic.kl $(ZIP_DIR)/system/usr/keylayout/
	cp other/internal_sd.fstab $(ZIP_DIR)/system/etc/
	cp other/external_sd.fstab $(ZIP_DIR)/system/etc/
	cp other/boot-B110-rooted.img $(ZIP_DIR)/boot.img
	#cp other/bootloader.img $(ZIP_DIR)/

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

