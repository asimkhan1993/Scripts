#  Docker Commands 


## -------- (Basic Commands)---------

### check running dockers
docker ps -a
docker container ls, docker ps -a,docker container ls -a

### How to start the docker container
docker start CONTAINER_ID

### To stop docker
docker stop container-ID/Name

###  List all docker images
docker images

### Deleting a Container
docker rm CONTAINER_ID

### How to check docker logs
docker logs CONTAINER-ID/Name


## -------- (Build Commands)---------

### Build a Container from Dockerfile
docker build -t "container name " .

### Building docker image from  docker file
docker build -t IMAGE_NAME:v1 DOCKERFILE_PATH

### Build a Container from Custom Dockerfile
docker build -t container-name:latest -f Dockerfile.custom .

## -------- (RUN Commands)---------


### Run a Container
docker run container-ID/NAME -p 80:80 -d

### Run container and enter in it
docker run -it -p 4002:3001 server

### How to create a running container
docker run -d -it CONTAINER-Name

## -------- (Attach Commands)---------


### Kill a container
docker kill CONTAINER_ID

### Attaching to the container
docker attach CONTAINER_ID


## -------- (RUN Commands Inside Container)---------

### Run commands inside docker container
docker exec -it CONTAINER_ID command

### enter a container not runing as a root
docker run --user root -it --rm docker-client bash

### Deleting container upon exit
docker run --rm -it --name deletingcontainer alpine sh

## -------- (Remove Commands)---------

###  How to remove docker images
docker rmi <IMAGE_ID>

### To kill all runing dockers
docker kill $(docker ps -q)


## --------(Volume Commands)---------


### Check the volumes of dockers
docker volume ls

### Create docker volume
docker volume create VOLUME_NAME

### Removing docker volume
docker volume rm VOLUME_NAME

### Add persistent volume to the containers	
docker run -d -it -v $(pwd):/var/www nginx


## -------- (Network Commands)---------


### How to list all docker networks  
docker network ls

### Create a docker network
docker network create NETWORK_NAME

### Get detailed information about network
docker network inspect NETWORK_NAME

### How to delete a docker network
docker network rm NETWORK_NAME

### Connect to a docker network
docker network connect NETWORK_NAME CONTAINER_ID

### Disconnect from a docker network
docker network disconnect NETWORK_NAME CONTAINER_ID

## -------- ( Commands)---------

### Copying Contents between Containers and the host file system
docker cp CONTAINER_ID:/file file, docker cp file CONTAINER_ID:/file

### Exposing Ports for Containers
docker run --name webserver -p 8080:80 nginx 

### Find the changes in container
docker diff CONTAINER_ID

### Creating a new Image from Containers
docker commit CONTAINER_ID REPOSITORY:TAG

### Monitoring the host for docker containers
docker events

### Inspecting docker image history
docker history IMAGE_ID

### Renaming docker container
docker rename CONTAINER NEW_NAME

### How to restart a docker container
docker restart CONTAINER_ID

## --------Prune (Delete Commands)---------

### if container is not working fine stop it and remove container
docker system prune -a

### How to delete all un-used network
docker network prune

### How to delete all un-used containers
docker container prune

## --------(Docker-compose Commands)---------


### Run compose file in parent directory
docker-compose up -d

### Build new changes in old container
docker-compose up -d --build

### if Compose file name is changed
docker-compose -f filename.yml -d --build
