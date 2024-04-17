pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MrAbhi9/AppliedDevopsGroupProject.git'
            }
        }

        stage('Building Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-credentials') {
                            sh "docker build -t mrabhi9/moneyexpensetracker:latest ."
                            
                            
                        }
                    }
                }
            }
        stage('Deploying Image on Docker Hub') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-credentials') {

                            sh "docker push mrabhi9/moneyexpensetracker:latest"
                            
                        }
                    }
                }
            }
        }
    }
