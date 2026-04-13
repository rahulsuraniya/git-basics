: << 'INFO'

Chapter 11: Docker Compose (from absolute Basics)
(read DevOps skill-used in almost every project)


 >>Why Docker Compose?
 Till now, you ran one container at a time but real applications have multible services, for example
 - App
 - Database
 -Cache
 - Backend
 - Frondend

Docker Compose helps you to run all of them together using one file.


 1: What is Docker Compose?
 Docker Compose is a tool to:
 - Run multi-container application
 - Using one YAML file (docker-compose.yml)
 - With one command


Instead of:
docker run ...
docker run ...
docker run ...

You just do:
docker-compose up

- very powerful
- very clean
- very DevOps-friendly



2: Real-Life Example (Very Important)

A Simple web app needs:
- Nginx --> web server
- App --> backed
- Database --> MySQL /Postgres

Docker Compose manages:
- Networking between containers
- Start order
- Ports
- Volumes



3: What is docker-compose.yml?
It is configuration file written in YAML

Basic structure:
version: '3'
Services:
  servcie-name:
    image: image-name
    ports:
      - "host:container"


4: Your first Docker-compose file(Hands-on)

Step1: Create directory
mkdir compose-demo
cd compose-demo

Step2: Create compose file
nano docker-comose.yml

paste this:
version: '3'
services:
  web:
    image: nginx
    ports:
      - "8080:80"
save and exit.


5: Run Docker Compose
docker-compose up
-- output will show nginx logs.
open browser:
http://localhost:8080
--- your service is running using Docker Compose.
Stop it:
ctrl+ c

6: Run in Backgroud (Detach mode)
   docker-compose up -d

 Check running containers:
 - docker ps

 Stop everything
docker-compose down


7: Networking Magic (Aut0 Feature)

Docker compose automatically:
- Create private netowrk
- Lets servcies talk using servcie names

Example:
 web --> db

No IP needed
This is huse in DevOps & Kubernetes.

8: Multi-container Example (Web + DB)

   version: '3'
   services:
     web:
       image: ngins
       ports:
         - "8081:80"


     database:
       inage: mysql
       environment:
         MHSQL_ROOT_PASSWORD: root

Run:
docker-compose up -d

-Two containers
-olne file
-One network



9: Why DevOps Engineers Love DOkcer Compose
 - Local developemnt
 - Reproducible environmetns
 - Easy testing
 - CI/CD pipeline support

 Docker Compose -- Kubernetes mindset starts here


INFO
