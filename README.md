# Play-With-Jenkins
This repository is a basic demonstration of a **Jenkins multibranch pipeline**. It includes a sample application with a simple Dockerfile and index.html file that is used to build and deploy a Docker image to a local Docker registry. The multibranch pipeline is defined using a Jenkinsfile that is located in the repository.

## Prerequisites
Before you can use this repository, you need to have the following installed on your local machine:

- Jenkins
- Docker

## Clone the repository
  Clone the repository to your local machine:
  
    git clone https://github.com/El-Zedy/Play-With-Jenkins.git
    cd Play-With-Jenkins
    
## Configure Jenkins
To configure Jenkins to use this repository, you need to do the following:

1. Create a new multibranch pipeline job in Jenkins.
2. Connect the job to your Git repository by specifying the repository URL and credentials.
3. Set up the build configuration to use the `Jenkinsfile`.
4. Save and run the job.

## Understanding the pipeline
The multibranch pipeline defined in this repository includes several stages:

- **Build** - builds the Docker image and tags it with the branch name and build number.
- **Test** - runs a basic integration test to ensure that the application is running correctly.
- **Deploy** - deploys the Docker image to a local Docker registry.

## Making changes
If you want to modify the application or the pipeline, you can do so by editing the `index.html` file and the `Jenkinsfile`, respectively.

## Conclusion
This repository provides a basic example of a Jenkins multibranch pipeline that builds, tests, and deploys a Docker image. With this as a starting point, you can extend the pipeline to include additional stages or functionality as needed for your specific project.

## Contact
If you have any questions or suggestions regarding this project, please contact the project owner at muhammadhassanelzedy@gmail.com .
