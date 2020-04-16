pipeline {
    agent { dockerfile true }
    stages {
	stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Deliver') {
            steps {
                sh 'docker run --publish 3000:3000 --detach --name docker-jenkins'
            }
        }
    }
}