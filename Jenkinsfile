/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'python:3.8.7-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}
