# ocean_minecraft_server_java

宇宙最高の Minecraft サーバーをつくる

### setup

```
% git clone https://github.com/uni-ezobafun/ocean_minecraft_server_java.git
% cd ocean_minecraft_server_java
% docker build -t minecraft_img -f ./docker/Dockerfile .
% docker run -p 8123:8123 -p 25565:25565 -v ./docker/mnt:/mnt --name minecraft_ctr -itd minecraft_img

### edit your eula.txt ###

% docker start -i minecraft_ctr
% open "http://localhost:8123/"
```

### dynmap

```
> worldborder set 1024
> dynmap pause all
> dmap worldlist
> dmap maplist world
> dynmap purgemap world cave
> dmap mapdelete world:cave
> dynmap pause none
> dynmap radiusrender world 0 0 100 flat
```
