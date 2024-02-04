#!/bin/sh -l

echo "$1" > docker-repo.txt
echo "$2" >> username.txt
echo "$3" >> password.txt
echo "$4" >> gh-repository.txt
echo "$5" >> gh-access-token.txt
echo "$6" >> runner-tag.txt


cat username.txt && cat password.txt

cat password.txt | docker login -u $2 --password-stdin
#docker build -t mmullin12/pong:latest -f ./ClientServer/app.DockerFile ./ClientServer
#docker push mmullin12/pong:latest