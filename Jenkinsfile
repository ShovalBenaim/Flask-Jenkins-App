pipeline {
    agent any
    stages {
        stage("SSH to Remote Host") {
            steps {
                sshagent(credentials: ['myid']) {
                    sh "ssh -o StrictHostKeyChecking=no ubuntu@44.211.205.183 'ls -l'"
                }
            }
        }
    }
}

