#!/usr/bin/env bash

#设置定时任务，每15分钟
rm -f cornjob
cFolder="$(pwd)"
#设定定时任务
echo "*/15 * * * * $cFolder/wallpaper.sh  > /dev/null 2>&1" | crontab
#获得一次壁纸
./wallpaper.sh  >> /dev/null 2>&1
