#!/bin/bash

apt-get update

apt-get install -y python3

echo '<h1>Hello, World!</h1><p>Serwer działa na porcie ${http_port}</p>' > /home/batorm/index.html

cd /home/batorm
nohup python3 -m http.server ${http_port} &

echo "Serwer HTTP uruchomiony na porcie ${http_port}"
