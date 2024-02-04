#!/bin/sh -l

echo "$1" > docker-repo.txt
echo "$2" >> username.txt
echo "$3" >> password.txt
echo "$4" >> gh-repository.txt
echo "$5" >> gh-access-token.txt
echo "$6" >> runner-tag.txt




wget https://github.com/docker/docker-credential-helpers/releases/download/v0.6.2/docker-credential-secretservice-v0.6.2-amd64.tar.gz
tar -xf docker-credential-secretservice-v0.6.2-amd64.tar.gz

chmod +x docker-credential-secretservice

#mv docker-credential-secretservice /usr/local/bin

ls /

echo "---------"
ls ~

export PATH=$PATH:$PWD/docker-credential-secretservice
sed -i '0,/{/s/{/{\n\t"credsStore": "secretservice",/' /github/home/docker/config.json

cat password.txt | docker login -u $2 --password-stdin
#docker build -t mmullin12/pong:latest -f ./ClientServer/app.DockerFile ./ClientServer
#docker push mmullin12/pong:latest