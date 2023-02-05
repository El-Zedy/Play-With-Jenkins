pipeline {
    agent { label 'iti-ubuntu-slave'}

    stages {

        stage('bulidd')
        {
            steps
            {
                withCredentials([usernamePassword(credentialsId: 'Dockerhub-cred', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')])
                {
                    sh """
                        docker login -u $USERNAME -p $PASSWORD
                        docker build -t moelzedy/iti-bakehouse-jenkins-proj:${BUILD_NUMBER} .
                        docker push moelzedy/iti-bakehouse-jenkins-proj:${BUILD_NUMBER}
                    """
                }
            }
        }

        stage('test')
        {
            steps
            {
                echo 'test'
            }
        }

        stage('deploy')
        {
            steps
            {
                echo 'deploy and Goodby'
            }
        }
    }
}
                  
