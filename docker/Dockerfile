FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-al2023

ENV VERSION 1.19.1

RUN yum -y update
RUN yum -y install wget

WORKDIR /mnt/minecraft

RUN wget https://download.getbukkit.org/spigot/spigot-${VERSION}.jar

RUN java -Xmx2048M -Xms2048M -jar spigot-${VERSION}.jar nogui
RUN cat eula.txt | sed "s/eula=false/eula=true/g" >> eula.txt

RUN mkdir plugins
RUN wget -O ./plugins/dynmap.jar https://dev.bukkit.org/projects/dynmap/files/3934649/download

CMD java -Xmx2048M -Xms2048M -jar spigot-${VERSION}.jar nogui
