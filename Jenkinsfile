pipeline {
    agent { 
		dockerfile {
			filename 'Dockerfile'
			args '--privileged -v /app:/app'
		} 
	}
    stages {
	stage('Build') {
            steps {
				sh 'docker run --publish 3000:3000 --detach --name docker-jenkins'
                sh 'npm install'
            }
        }
        stage('Deliver') {
            steps {
                sh 'npm start'
            }
        }
    }
}