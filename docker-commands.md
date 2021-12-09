## check running dockers
docker ps -a

## To Build Docker Image with Tag
docker build -t tagname .

## Building docker image from  docker file
docker build -t IMAGE_NAME:v1 DOCKERFILE_PATH

## How to start the docker container
docker start CONTAINER_ID

## To stop docker
docker stop container-ID/Name

## Deleting a Container
docker rm CONTAINER_ID

## How to check docker logs
docker logs CONTAINER-ID/Name

## List docker containers
docker ps, docker container ls, docker ps -a,docker container ls -a

## How to create a running container
  docker run -d -it CONTAINER-Name

## Creating a named container
  docker run -d -it --name firstcontainer alpine

## Kill a container
  docker kill CONTAINER_ID

## Attaching to the container
  docker attach CONTAINER_ID

## Run commands inside docker container
  docker exec -it CONTAINER_ID command

##  List all docker images
  docker images

##  How to remove docker images
  docker rmi <IMAGE_ID>



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

## Copying Contents between Containers and the host file system
docker cp CONTAINER_ID:/file file, docker cp file CONTAINER_ID:/file

## Exposing Ports for Containers
docker run --name webserver -p 8080:80 nginx 

## Find the changes in container
docker diff CONTAINER_ID

## Creating a new Image from Containers
docker commit CONTAINER_ID REPOSITORY:TAG

## Add persistent volume to the containers	
docker run -d -it -v $(pwd):/var/www nginx

## Monitoring the host for docker containers
docker events

## Inspecting docker image history
docker history IMAGE_ID

## Renaming docker container
docker rename CONTAINER NEW_NAME

## How to restart a docker container
  docker restart CONTAINER_ID

## How to list all docker networks  
docker network ls

## Create a docker network
docker network create NETWORK_NAME

## Get detailed information about network
docker network inspect NETWORK_NAME

## How to delete a docker network
docker network rm NETWORK_NAME

## Connect to a docker network
docker network connect NETWORK_NAME CONTAINER_ID

## Disconnect from a docker network
docker network disconnect NETWORK_NAME CONTAINER_ID

### --------Prune (Delete Commands)---------

## if container is not working fine stop it and remove container
docker system prune -a

## How to delete all un-used network
docker network prune

## How to delete all un-used containers
docker container prune

## Create docker volume
docker volume create VOLUME_NAME
## Removing docker volume
docker volume rm VOLUME_NAME
## Deleting container upon exit
docker run --rm -it --name deletingcontainer alpine sh
