#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:11297024:13b59e8906497616c21bdb6479dc6f1842c67470; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:6693120:6265460f718eb42f43161808af08b2d5be09d307 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 13b59e8906497616c21bdb6479dc6f1842c67470 11297024 6265460f718eb42f43161808af08b2d5be09d307:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
