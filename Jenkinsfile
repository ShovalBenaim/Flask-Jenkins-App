pipeline {
    agent any

    stages {
        stage("Checkout code") {
            steps {
                checkout scm
            }
        }

        stage("Build Docker Image") {
            steps {
                sh "docker build -t myflaskapp ."
            }
        }

        stage("Push Docker Image to ECR") {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'ECE-user']]) {
                    sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 334604350470.dkr.ecr.us-east-1.amazonaws.com"
                    sh "docker tag myflaskapp:latest 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest"
                    sh "docker push 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest"
                }
            }
        }

        stage("SSH to Remote Host") {
            steps {
                sshagent(credentials: ['myid']) {
                    sh "ssh -o StrictHostKeyChecking=no ubuntu@44.211.205.183 'docker pull 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest && docker run -d -p 5000:5000 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest'"
                }
            }
        }
    }
}
