/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'python:3.8.7-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
		# build and the app on the docker container
		# run the app on the container and see if it runs well
		# upload the image to docker hub
		# pull the image from docker hub to the application server
		# build the container on the application server
		# run the container
            }
        }
    }
}
