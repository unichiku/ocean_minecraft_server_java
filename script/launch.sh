#!/bin/sh
cd /home/ec2-user/minecraft

NOW=`date "+%Y%m%d"`
zip ${NOW}.zip -r world world_nether world_the_end/
aws s3 cp ${NOW}.zip s3://uni-minecraft-artifact/world_backup/world/ --storage-class ONEZONE_IA
rm -f ${NOW}.zip

java -Xmx2048M -Xms2048M -jar spigot-1.17.jar nogui