unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'mode/*' -d $TMPDIR >&2
mkdir -p $MODPATH/system/bin
mkdir -p $MODPATH/system/etc/sysconfig

ui_print ""
sleep 0.3
ui_print " (Volume + Proximo) × (Volume - Instalar) "
ui_print ""
sleep 0.3
ui_print "=========================="
ui_print "-        Low Ram         -"
ui_print "=========================="
sleep 0.2
ui_print " 1. Ativar"
sleep 0.2
ui_print " 2. Desativar "
ui_print ""
sleep 0.1
ui_print " Selecione: "
GU=1
while true; do
	ui_print "  $GU"
	if $VKSEL; then
		GU=$((GU + 1))
	else 
		break
	fi
	if [ $GU -gt 2 ]; then
		GU=1
	fi
done
#
case $GU in
 1 ) FCTEXT="Low Ram Ativado"; sed -i '/ro.config.low_ram/s/.*/ro.config.low_ram=true/' $MODPATH/system.prop;;
 2 ) FCTEXT="Low Ram Desativado"; sed -i '/ro.config.low_ram/s/.*/ro.config.low_ram=false/' $MODPATH/system.prop;;
esac
ui_print ""
ui_print "- Modo selecionado: $FCTEXT "
ui_print "" 

ui_print ""
sleep 0.3
ui_print " (Volume + Proximo) × (Volume - Instalar) "
ui_print ""
sleep 0.3
ui_print "==========================="
ui_print "-        SE linux         -"
ui_print "==========================="
sleep 0.2
ui_print " 1. Permissiver "
sleep 0.2
ui_print " 2. Enforcing "
sleep 0.2
ui_print " 3. Não Mexer "
sleep 0.2
ui_print ""
sleep 0.1
ui_print " Selecione: "
AL=1
while true; do
ui_print "   $AL"
	if $VKSEL; then
		AL=$((AL + 1))
	else 
		break
	fi
	if [ $AL -gt 3 ]; then
		AL=1
	fi
done
#
case $AL in
 1 ) FCTEXTAD6="SElinux Permissiver"; cp -af $TMPDIR/mode/Permissiver $MODPATH/system/bin/optxkey;;
 2 ) FCTEXTAD6="SElinux Enforcing"; cp -af $TMPDIR/mode/Enforcing $MODPATH/system/bin/optxkey;;
 3 ) FCTEXTAD6="SElinux não modificado"; ;;
esac
ui_print ""
ui_print "- Modo selecionado: $FCTEXTAD6"
ui_print ""

ui_print ""
sleep 0.3
ui_print " (Volume + Proximo) × (Volume - Instalar) "
ui_print ""
sleep 0.3
ui_print "==========================="
ui_print "-    Fix Random Reboot    -"
ui_print "==========================="
sleep 0.2
ui_print " 1. Ativar"
sleep 0.2
ui_print " 2. Desativar "
ui_print ""
sleep 0.1
ui_print " Selecione: "
AL=1
while true; do
ui_print "   $AL"
	if $VKSEL; then
		AL=$((AL + 1))
	else 
		break
	fi
	if [ $AL -gt 2 ]; then
		AL=1
	fi
done
#
case $AL in
 1 ) FCTEXTAD6="Fix reboot Ativado"; cp -af $TMPDIR/mode/FixRandomReboot $MODPATH/system/bin/optxkey;;
 2 ) FCTEXTAD6="Fix reboot Desativado"; rm -rf $TMPDIR/mode/FiXRandomReboot;;
esac
ui_print ""
ui_print "- Modo selecionado: $FCTEXTAD6"
ui_print ""

ui_print ""
sleep 0.3
ui_print " (Volume + Proximo) × (Volume - Instalar) "
ui_print ""
sleep 0.3
ui_print "==========================="
ui_print "-    Boost Fast Charge    -"
ui_print "==========================="
sleep 0.2
ui_print " 1. Ativar para A10 "
sleep 0.2
ui_print " 2. Ativar para A20-A50 "
sleep 0.2
ui_print " 3. Desativar "
sleep 0.2
ui_print ""
sleep 0.1
ui_print " Selecione: "
AL=1
while true; do
ui_print "   $AL"
	if $VKSEL; then
		AL=$((AL + 1))
	else 
		break
	fi
	if [ $AL -gt 3 ]; then
		AL=1
	fi
done
#
case $AL in
 1 ) FCTEXTAD6="Boost Fast Charge Ativado"; cp -af $TMPDIR/mode/Fast_Charge_A10 $MODPATH/system/bin/optxkey;;
 2 ) FCTEXTAD6="Boost Fast Charge Ativado"; cp -af $TMPDIR/mode/Fast_Charge_A20-A50 $MODPATH/system/bin/optxkey;;
 3 ) FCTEXTAD6="Boost Fast Charge Desativado"; ;;
esac
ui_print ""
ui_print "- Modo selecionado: $FCTEXTAD6"
ui_print ""

ui_print ""
sleep 0.3
ui_print " (Volume + Proximo) × (Volume - Instalar) "
ui_print ""
sleep 0.3
ui_print "==========================="
ui_print "-      Game Unlocker      -"
ui_print "==========================="
sleep 0.2
ui_print " 1. PUBG Mobile e Dead Trigger 2 "
sleep 0.2
ui_print " 2. Asphalt, COD Mobile e BlackDesert Mobile "
sleep 0.2
ui_print " 3. Mobile Legends e League of Legends "
sleep 0.2
ui_print " 4. Arena of Valor "
sleep 0.2
ui_print " 5. COD Mobile 120FPS "
sleep 0.2
ui_print " 6. Fortnite "
sleep 0.2
ui_print " 7. Não usar unlocker "
ui_print ""
sleep 0.1
ui_print " Selecione: "
GU=1
while true; do
	ui_print "  $GU"
	if $VKSEL; then
		GU=$((GU + 1))
	else 
		break
	fi
	if [ $GU -gt 7 ]; then
		GU=1
	fi
done
#
case $GU in
 1 ) FCTEXT="PUBG Mobile e Dead Trigger 2"; sed -i '/ro.product.model/s/.*/ro.product.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=GM1917/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=GM1917/' $MODPATH/system.prop;;
 2 ) FCTEXT="Asphalt, COD Mobile e BD Mobile"; sed -i '/ro.product.model/s/.*/ro.product.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SM-G965F/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SM-G965F/' $MODPATH/system.prop;;
 3 ) FCTEXT="Mobile Legends And League of Legends"; sed -i '/ro.product.model/s/.*/ro.product.model=A2218/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=A2218/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=A2218/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=A2218/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=A2218/' $MODPATH/system.prop;;
 4 ) FCTEXT="Arena of Valor"; sed -i '/ro.product.model/s/.*/ro.product.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=R11 Plus/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=R11 Plus/' $MODPATH/system.prop;;
 5 ) FCTEXT="COD Mobile 120FPS"; sed -i '/ro.product.model/s/.*/ro.product.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model=SO-52A/' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model=SO-52A/' $MODPATH/system.prop;;
 6 ) FCTEXT="Fortnite"; chmod 0777 $GAMEUSERSETTINGS_FILE; magiskhide enable; magiskhide add com.epicgames.fortnite; settings put global adb_enabled 0; mv /data/media/0/TWRP /data/media/0/PRWT; mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img; am force-stop com.epicgames.fortnite; sed -i -e 's/MobileFPSMode=Mode_20Fps/MobileFPSMode=Mode_60Fps/g' $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_30Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_45Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_60Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE; sed -i -e 's/MobileFPSMode=Mode_120Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE;;
 7 ) FCTEXT="Não usar unlocker"; sed -i '/ro.product.model/s/.*/ro.product.model= /' $MODPATH/system.prop; sed -i '/ro.product.odm.model/s/.*/ro.product.odm.model=./' $MODPATH/system.prop; sed -i '/ro.product.system.model/s/.*/ro.product.system.model=/' $MODPATH/system.prop; sed -i '/ro.product.vendor.model/s/.*/ro.product.vendor.model= /' $MODPATH/system.prop; sed -i '/ro.product.system_ext.model/s/.*/ro.product.system_ext.model= /' $MODPATH/system.prop;;
esac
ui_print ""
ui_print "- Unlocker selecionado: $FCTEXT "
ui_print ""
sleep 0.2
ui_print " "
ui_print "- Aplicando algumas coisas "
ui_print " "

sleep 1

# Analytics Remover
rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.google.android.deskclock/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.digibites.accubattery/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.vanced.android.youtube/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.samsung.android.mobileservice/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.sec.android.app.samsungapps/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.digibites.accubattery/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.sec.android.daemonapp/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.osp.app.signin/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.google.android.googlequicksearchbox/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.core.lntmobile/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.samsung.android.dynamiclock/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.android.gms.measurement.prefs.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/frc_1:633738944520:android:716b5964e99d2c3d_firebase_settings.xml
rm -rf /data/data/com.camerasideas.instashot/shared_prefs/frc_1:1000386510336:android:ab5973db7e7e86ed_firebase_settings.xml
rm -rf /data/data/com.touchtype.swiftkey/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.firebase.common.prefs:W0RFRkFVTFRd+MTo1OTM5NTA2MDI0MTg6YW5kcm9pZDpjNGRhMWMwNTdjZjU3YmE4.xml
rm -rf /data/data/org.telegram.messenger/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/org.telegram.messenger/shared_prefs/frc_1:760348033671:android:f6afd7b67eae3860_firebase_settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/frc_1:1002943954979:android:bfc8b0f2ed5f47a0_firebase_settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/frc_1:275128417090:android:3dc63557758b5b0f_firebase_settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/photo.editor.photoeditor.photoeditorpro/shared_prefs/frc_1:757324348735:android:caaddb32e54f9271_firebase_settings.xml
rm -rf /data/data/wifisecurity.ufovpn.android/shared_prefs/frc_1:76973129151:android:ab00156b263ee3195ef50a_firebase_settings.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/user_de/0/com.samsung.android.fmm/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/com.touchtype.swiftkey/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.google.android.play.games/shared_prefs/com.google.firebase.common.prefs:W0RFRkFVTFRd+MTo1OTM5NTA2MDI0MTg6YW5kcm9pZDpjNGRhMWMwNTdjZjU3YmE4.xml
rm -rf /data/data/org.telegram.messenger/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.google.firebase.remoteconfig_legacy_settings.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/user_de/0/com.samsung.android.fmm/shared_prefs/com.google.firebase.messaging.xml
rm -rf /data/data/com.touchtype.swiftkey/shared_prefs/telemetry_service_key.xml
rm -rf /data/data/com.samsung.android.biometrics.app.setting/shared_prefs/com.samsung.android.biometrics.app.setting_preferences.xml
rm -rf /data/data/com.samsung.android.tadownloader/shared_prefs/tad_biometrics_info.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/GnssmetricsPH.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/com.google.android.metrics.xml
rm -rf /data/data/com.paget96.lsandroid/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/droom.sleepIfUCan/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.rahul.videoderbeta/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.samsung.android.game.gamehome/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.samsung.android.game.gamehome/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/in.android.vcredit/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.opera.max.oem/shared_prefs/com.crashlytics.sdk.android.crashlytics-core:com.crashlytics.android.core.CrashlyticsCore.xml
rm -rf /data/data/com.opera.max.oem/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.opera.max.oem/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.rubenmayayo.reddit/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/photo.editor.photoeditor.photoeditorpro/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/photo.editor.photoeditor.photoeditorpro/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.hiya.star/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.hiya.star/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/wifisecurity.ufovpn.android/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/wifisecurity.ufovpn.android/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/ir.stsepehr.hamrahcard/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/ir.stsepehr.hamrahcard/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.intsig.camscanner/shared_prefs/com.crashlytics.sdk.android:answers:settings.xml
rm -rf /data/data/com.intsig.camscanner/shared_prefs/com.crashlytics.prefs.xml
rm -rf /data/data/com.paget96.netspeedindicator/shared_prefs/com.google.firebase.crashlytics.xml
rm -rf /data/data/com.samsung.android.mobileservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.appsedge/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.themestore/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.quicktool/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.contacts/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.calendar/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.samsungapps/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.routines/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.net.wifi.wifiguider/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.messaging/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.galaxyfinder/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.dialer/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.daemonapp/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.social/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.applock/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.taskedge/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.mdecservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.mdx.quickboard/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.aodservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.storyservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.dqagent/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.osp.app.signin/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/SamsungAnalyticsPrefs_runestone.xml
rm -rf /data/data/com.samsung.android.rubin.app/shared_prefs/SamsungAnalyticsPrefs_ad.xml
rm -rf /data/data/com.samsung.android.allshare.service.fileshare/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.camera/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.mdx/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.game.gametools/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.dynamiclock/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.simplesharing/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.lool/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.app.cocktailbarservice/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.myfiles/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.samsung.android.video/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.sec.android.app.launcher/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/user_de/0/com.samsung.android.fmm/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/user_de/0/com.android.systemui/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/user_de/0/com.samsung.android.incallui/shared_prefs/SamsungAnalyticsPrefs.xml
rm -rf /data/data/com.netflix.mediaclient/shared_prefs/com.netflix.mediaclient.client_cast_analytics_data.xml
rm -rf /data/data/com.instagram.android/shared_prefs/com.facebook.analytics.appstatelogger.AppStateBroadcastReceiver.xml
rm -rf /data/data/com.instagram.android/shared_prefs/analyticsprefs.xml
rm -rf /data/data/com.instagram.android/shared_prefs/rti.mqtt.analytics.xml
rm -rf /data/data/com.google.android.apps.photos/shared_prefs/analytics.xml
rm -rf /data/data/com.reddit.frontpage/shared_prefs/analytics_event_batch_size.xml
rm -rf /data/data/com.android.browser/shared_prefs/day_analytics.xml
rm -rf /data/data/com.google.android.apps.docs/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/coreanalyticsprefs.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/com.google.android.gms.wallet.service.analytics.AnalyticsPersistentStore.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/GoogleAnalyticsPlayLogs.xml
rm -rf /data/data/com.google.android.gms/shared_prefs/GoogleAnalyticsPlayLogs.xml
rm -rf /data/data/com.google.android.deskclock/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.instagram.android/shared_prefs/rti.mqtt.analytics.xml
rm -rf /data/data/com.instagram.android/shared_prefs/com.facebook.analytics.appstatelogger.AppStateBroadcastReceiver.xml
rm -rf /data/data/es.rafalense.telegram.themes/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.supercell.brawlstars/shared_prefs/com.google.android.gms.analytics.prefs.xml
rm -rf /data/data/com.taptap/shared_prefs/com.sensorsdata.analytics.android.sdk.SensorsDataAPI.xml

dbg "Finished with $ERR_CNT failed writes."