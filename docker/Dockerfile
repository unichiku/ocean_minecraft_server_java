FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-al2023

ENV VERSION 1.20.1

RUN yum -y update
RUN yum -y install wget

WORKDIR /root/minecraft

RUN wget https://download.getbukkit.org/spigot/spigot-${VERSION}.jar

RUN mkdir plugins
RUN wget -O ./plugins/dynmap.jar https://dev.bukkit.org/projects/dynmap/files/4632182/download

ADD ./docker/setup.sh /root/minecraft/setup.sh
RUN chmod 700 /root/minecraft/setup.sh

CMD /root/minecraft/setup.sh
