# build
```shell
docker build -t mateusrangel/simple-quake-live-server .
```
# run
```shell
sudo docker run -d -e hostname="simple quake live server" -p 27960:27960/udp mateusrangel/simple-quake-live-server
```
