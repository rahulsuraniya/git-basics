: << 'INFO'
CHAPTER 10: Dockerfile -- Build your own Docker Image (From Scratch)

This chapter is CRITICAL because:
 - CI/CD pipelines build Docker images
 - Kubernetes runs Docker images
 - DevOps engineers write Docker files daily


1: What is Dockerfile?
 A Dockerfile is:
 - A text file
 - Contains instructions
 - Used to build Docker images automatically

Think of it as:
 A recipe to create a Docker image


2: Why dockerfile is Needed?
 Previously you ran:
 - docker run nginx
 - ``

But in real projects:
 - Your app code exixts
 - Your dependencies exist
 - Your configurations exist

-- Dockerfile packages everything into one image

3: Dockerfile Basic Structure
	FROM base-image
	WORKDIR /app
	COPY files
	RUN commands
	CMD command-to-run
you dont need to memorize yet -- we'll practice step-by-step


4: Essential Dockerfile Instructions (Must Learn)
-FROM --> Base image (starting point)
FROM ubuntu

-WORKDIR --> Sets working directory inside container
WORKDIR /app

-COPY --> Copy files from host --> container
COPY . /app

RUN --> Execute commands during image build
RUN apt update && apt apt install -y nginx

-CMD --> Command to rum when container starts
CMD ["nginx", "-g", "daemon off;"]



5: Your first Dockerfile (Hands-on)

step-1: Create a folder
mkdir dockerfile-demo
cd dockerfile-demo

Step2: Create Dockerfile
nano Dockerfile
add this content:
FROM ubuntu
RUN apt update &&  apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]

save & exit


Step3: Build Docker Image
docker build -t my-nginx .
-t --> image name
. --> current directory

Step4: Run Container
docker run -d -p 8081:80 my-nginx
Open browser: http://localhost:8081
You just ran your own image, not Docker Hub's.




6: Important DevOps Concepts (Real-World)
- Image Layer
each Dockerfile instruction creates a layer
- More layers = slower builds
- DevOps optimizes Dockerfiles for faster CI

-Build Once, Run Anywhere
Same image:
Local
QA
Production
Kubernets

this is why Docker changed DevOps



7: Common Beginner Mistakes
-Too many RUN commands
-Forgetting CMD
-Running services in background
-Not exposing correct ports

INFO

