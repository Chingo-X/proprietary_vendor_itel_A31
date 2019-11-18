#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:10316032:8b2e69923e3b7cd3b20c354dcf0f08adccae9b68; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:8446208:da1511c34ef41c561a208faa0e695713f1f85155 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 8b2e69923e3b7cd3b20c354dcf0f08adccae9b68 10316032 da1511c34ef41c561a208faa0e695713f1f85155:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
