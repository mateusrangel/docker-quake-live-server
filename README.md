# build
```shell
docker build -t mateusrangel/simple-quake-live-server .
```
# run a server without password
```shell
docker run -d -e hostname="my server name" -p 27960:27960/udp mateusrangel/simple-quake-live-server
```

# run a server with password 
```shell
docker run -d -e hostname="my server name" -e password="mypass123" -p 27960:27960/udp mateusrangel/simple-quake-live-server
```
