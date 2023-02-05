pipeline {
    agent { label 'iti-ubuntu-slave'}
    parameters
    {
        choice(name: 'ENV', choices: ['dev', 'test', 'prod',"release"])
    } 

    stages {

        stage('bulidd')
        {
            steps
            {
                script
                {
                    if (params.ENV == "release")
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
            }
        }
        
        stage('deploy')
        {
            steps
            {   
                script
                {
                    if (params.ENV == "dev" || params.ENV == "test" || params.ENV == "prod")
                    {
                        withCredentials([file(credentialsId: 'k8s-kubeconfig', variable: 'KUBECONFIG')])
                        {
                        sh """
                            mv Deployment/deploy.yaml Deployment/deploy.yaml.tmp
                            cat Deployment/deploy.yaml.tmp | envsubst > Deployment/deploy.yaml
                            rm -f Deployment/deploy.yaml.tmp
                            kubectl apply -f Deployment --kubeconfig=${KUBECONFIG}
                            """
                        }
                    }
                }
            }
        }
    }
}
                  
