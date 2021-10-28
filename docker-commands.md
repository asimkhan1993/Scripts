## check running dockers
docker ps -a

## check docker logs
docker logs CONTAINER-ID/Name

## To stop docker
docker stop container-ID/Name

## if container is not working fine stop it and remove container
docker system prune -a

## To kill all runing dockers
docker kill $(docker ps -q)

## enter a container not runing as a root
docker run --user root -it --rm docker-client bash

## Build a Container from Dockerfile
docker build -t "container name " .
## Run a Container
docker run container-ID/NAME -p 80:80 -d
## Run container and enter in it
docker run -it -p 4002:3001 server
## Run compose file in parent directory
docker-compose up -d
## Build new changes in old container
docker-compose up -d --build
## if Compose file name is changed
docker-compose -f filename.yml -d --build
## Check the volumes of dockers
docker volume ls
