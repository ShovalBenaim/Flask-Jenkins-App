pipeline {
    agent any
    stages {
        stage("SSH to Remote Host") {
            steps {
                sshagent(['0199d99b-2d91-426e-97a8-595cbbda23b2']) {
                    sh "ls"
                }
            }
        }
    }
}

