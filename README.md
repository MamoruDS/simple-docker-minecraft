# simple-docker-minecraft
> Start Minecraft server from dockerized Java

[![](https://img.shields.io/docker/pulls/mamoruio/simple-docker-minecraft.svg?style=flat-square)](https://hub.docker.com/r/mamoruio/simple-docker-minecraft)  
This image provides a Minecraft server with server files (support forge
## usage
### before start
- You need to prepare your server side files like `server.jar` or `forge-1.12.2-14.23.5.2808-universal.jar`
- You need to set your agreement to [Mojang's EULA](https://account.mojang.com/documents/minecraft_eula) in `eula.txt` before use.
  ```shell
  # if you agree with EULA, do this in your server's directory
  echo "eula=true" > eula.txt
  ```
### how to start/stop
start server (one time method
```shell
docker run -dt --rm --name minecraft-server \
    -v /minecraft/server/dir:/app \
    -e JAR="server.jar" \
    -p 25565:25565 \
    mamoruio/simple-docker-minecraft
```

start server
```shell
docker run -dt --name minecraft-server \
    -v /minecraft/server/dir:/app \
    -e JAR="server.jar" \
    -p 25565:25565 \
    mamoruio/simple-docker-minecraft
    
#restart after stop
docker start minecraft-server
```

terminate server
```shell
docker stop minecraft-server
```
### other
interact with server's console (from start server
```shell
docker run -it --rm --name minecraft-server \
    -v /minecraft/server/dir:/app \
    -e JAR="server.jar" \
    -p 25565:25565 \
    mamoruio/simple-docker-minecraft
```

specify JVM's ram usage
```shell
docker run -it --rm --name minecraft-server \
    -v /minecraft/server/dir:/app \
    -e XMS="4G" \
    -e XMX="4G" \
    -p 25565:25565 \
    mamoruio/simple-docker-minecraft
```
