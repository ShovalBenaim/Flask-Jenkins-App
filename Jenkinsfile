pipeline {
  agent any

  stages {
    stage('SSH to Remote Host') {
      steps {
        withEnv(['SSH_KEY=/var/lib/jenkins/devops.pem']) {
          sshagent(credentials: ['devops.pem']) {
            sh 'ssh -o StrictHostKeyChecking=no ubuntu@44.211.205.183 ls'
          }
        }
      }
    }
  }
}

