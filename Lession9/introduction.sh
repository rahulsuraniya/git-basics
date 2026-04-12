# Lession9: Docker - containers from absolute basics

# 1. Why Docker exists (The core Problem it solves)
# before Docker, teams faced this issue all the time.

# problem was that it works on my machine but not on production.

# Reasons:
# Different OS version
# different libraries
# different configurations
# Dependency conflicts

# Docker solve this by:
# Packaging app + dependencies + OS libraries together
# Running the same way everywhere


# 2: What is a Container? (Very Simple)
# A container is:
# - A lightweight, isolated environment
# - Contains everything needed to run an application
# - Runs on top of the host OS

# Think of it as:
# - A mini-OS just for your application


# 3. What is docker?
# - Docker is a tool to create, run and manage containers

# Docker has 3 key parts:
# 1. Docker Image --> Blueprint
# 2. Docker container --> Running instance
# 3. Docker Engine --> runs everything

# 4. Image vs Container (Very impartant)
# Concept  and  Meaning
# image --> Template (read only)
# container --> running image

# Example
# Image = class
# Container = object


# 5: Installing Docker
# On Ubuntu:
# sudo apt update
# sudo apt install docker.io -y

# check version:
# docker --version

# Start Docker:
# sudo systemctl start docker
# sudo systemctl enable docker

# 6. Run your first container
# sudo docker run hello-world

# Docker will:
# Download image from Docker Hub
# Create container
# Run it
# exit

# if this works --> Docker is installed correctly



# 7. Dokcer Hub (Image Repository)
# - Dicker Hub is like as GitHub for Docker images

# Examples:
# - nginx
# - ubuntu
# - mysql
# -python


# 8. Run as Ubuntu Container
# sudo docker run -it ubuntu
# Now you are inside a container

#try:
# ls
# pwd

#exit container:
# exit



# 9. Run a Web Server (Real DevOps Example)
#Run Nginx container:
# sudo docker run -d -p 8080:80 nginx

# Breaking it down:
# -d --> run in background
# -p 8080:80 --> map host port to container port
# nginx --> image name

#Open browser:
# http://localhost:8080
# you just deployed a web server in one command.



# 10. Docker Basic Commands (Must Remember)
# List running containers: --> docker ps
# List all containers: --> docker ps -a
# stop container: -- docker stop <container_id>
# Remove container: --> docker rm <container_id>
# List images: --> docker image


