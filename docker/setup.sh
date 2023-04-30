cp -r /root/minecraft /mnt/minecraft
cd /mnt/minecraft

java -Xmx2048M -Xms2048M -jar spigot-${VERSION}.jar nogui
cat eula.txt | sed "s/eula=false/eula=true/g" >> eula.txt
java -Xmx2048M -Xms2048M -jar spigot-${VERSION}.jar nogui
