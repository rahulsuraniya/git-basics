: << 'INFO'

Chapter 13: GitLab CI/CD - From absolute Basics

1. Core components of GitLab CI/CD

Repository: your code stored in GitLab

Pipeline: A sequence of automated steps

Jobs: Individual task (build, test, deploy)

Runner: A machine that executes jobs


2. What is .gitlab-ci.yml?
This file:
- Lives in root of repo
- Defines CI/CD pipeline
- Written in YAML

This is the heart of GitLab DevOps

3. Your First Gitlab CI Pipeline (Hello DevOps)

Step1: Create Gitlab Account
Go to --> https://gitlab.com
create account (free)

Step2: Create New Repository
 - New Project
 - Name: gitlab-devops
 - Visibility: Public
 - Create project

Step3: Create .gitlab-ci.yml
In your repo root, create file:

stages:
  - test

hello_job:
  stage: test
  script:
    - echo "Hello Rahul"
    - echo "Gitlab CI is working!"
    - date
    - whoami



Step 4: See Pileline Running
- Go to CI/CD --> Pipelines
- You will see pipeline running automatically
- Click job --> View logs

This is Continuous Integration



4: Understanding the file (Very Important)

stages:
  - test
--> Defines pipeline stages

hello_job:
--> Jobname

script:
--> Commands executed by runner


5: What is a Gitlab Runner?
A runner:
 - Executes CI jobs
 - can be:
   - Shared (Gitlab provided)
   - Specific (Your VM/server)

For learning, GitLab shared runners are enough.


6: GitLab CI + Docker (Real DevOps example)

Example building Docker image:

stages:
  - build

build_image:
  stage: build
  image: docker:latest
  services:
    - docker:dind
  script:
    - docker build -t myapp .
``

Note: Same Docker knoledge you already learned


# Assignment -GitLab CI (Chapter 13)

Do this catefully:

1: Create Gitlab repository
2: Add .gitlab-ci.yml with hello_job
3: Push code
4: Verify Pipeline success
5: Open job logs
