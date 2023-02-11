pipeline {
    agent any

    stages {
        stage('Test SSH Connection') {
            steps {
                sh 'ssh -i /var/lib/jenkins/devops.pem ubuntu@44.211.205.183'
                sh 'ls'
            }
        }
    }
}

