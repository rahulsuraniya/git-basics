
: << 'INFO'

Chapter 13(PRACTICAL): GitLab CI/CD-Hands-On

What you will achieve in this chapter?
By the end of this practical, you will:
  - Create a GitLab project
  - Write .gitlab-ci.ym;
  - Trigger a CI pipeline automatically
  - Understanding jobs, stages, runners
  - Read CI logs like a DevOps engnineer


STEP1: Create GitLab Account (if not already)

Go to httos://gitlab.com
	- Signup
	- Confirm email(if required)
Done once ready

STEP2: Create a New GitLab Project
 1: Click New Project
 2: Choose Create blank project
 3: Fill details:
 	- Project name: gitlab-devops
	- Visibility: public
 4: Click Create project
Your GitLab repo is ready.


IMPORTANT CONCEPT (Before First Pipeline)

GItLab CI works when:
 - There is a file named .gitlab-ci-yml
 - It is in the root of the repository
 - You commit & push it
Once pushed --> pipeline runs automatically.

STEP3: Create your First CI Pipeline (HELLO WORLD)
3.1 Create .gitlab-ci.yml

In your GitLab repo:
 - Click + --> New file
 - File name: .gitlab-ci.yml
 - Copy & paste this

 stages:
   - test

 hello_job:
   stage: test
   script:
     - echo "Hello Rahul"
     - echo "Welcome to GitLab CI/CD"
     - date
     - whoami

3.2 Commit the file
 - Commit nessage: Add first Gitlab CI Pipeline
 - Click Commit changes


STEPS4: Watch Pilelne Run Automatically
 1: Go to CI/CD --> Pipelines
 2: You will see Pipeline = Running / Passed
 3: Click the pipeline
 4: Click hello_job
 5: Open Job logs

 you should see:
 Hello Rahul
 Welcoe to GitLab CI/CD

Note: This is Continuous Integration in action


What just Happened? (Very Important)
 -You sushed code
 -GitLab detected -gitlab-ci.yml
 -Shared runner executed your job
 -Ountput was logged

NOTE: No Jenkins No server setup Pure DevOps automation

STEP5: Understanding the YAML (Must know)

stages --> Pipeline steps order

	stages:
	  - test

hello_job -- Job name (can be anything)
	hello_job

script --> Shell commands executed by runner

	script:
	  - command
Note Runner uses Linux shell


STEP 6: Add Multiples Jobs (Real CI Example)

Edit -gitlab-ci.yml and replace content with this:

   stagesL
     - build
     - test

   build_job:
     stage: build
     script:
       - echo "Building application..."
       - mkdir build
       - echo "build successful"

   test_job:
     stage: test
     script:
       - echo "Running tests..."
       - echo "All tests passed!"

What you'll see now
 - Pipeline with 2 stages
 - Job run in order
 - build job --> test_job

This is real CI pipeline structuring


STEP7: GitLab Runner (Simple Explanation)

What ran your job?
--> GitLab shared Runner
 - Linux VM
 - Docker based
 - Auto-managed by GitLab

You did not install anything

Later (advance):
 - You can install your own runner
 - On VM / EC2 / Kubernetes


Assignment - Chapter (Mandatory)
Do all of these:

Tasks:
 1: Create GitLab project
 2: Add .gitlab-ci.yml
 3: Make pipeline run successfully
 4: Add 2 stages (build + test)
 5: Verify both jobs pass
 6: Open logs and read Output
