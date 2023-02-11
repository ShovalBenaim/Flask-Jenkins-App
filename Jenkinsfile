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
                sh "sudo docker build -t myflaskapp ."
            }
        }

        stage("Push Docker Image to ECR") {
            steps {
                withCredentials([aws(credentialsId: '334604350470', region: 'us-east-1')]) {
                    sh "sudo aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 334604350470.dkr.ecr.us-east-1.amazonaws.com"
                    sh "sudo docker tag myflaskapp:latest 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest"
                    sh "sudo docker push 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest"
                }
            }
        }

        stage("SSH to Remote Host") {
            steps {
                sshagent(credentials: ['myid']) {
                    sh "ssh -o StrictHostKeyChecking=no ubuntu@44.211.205.183 'sudo docker pull 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest && sudo docker run -d -p 5000:5000 334604350470.dkr.ecr.us-east-1.amazonaws.com/myflaskapp:latest'"
                }
            }
        }
    }
}

