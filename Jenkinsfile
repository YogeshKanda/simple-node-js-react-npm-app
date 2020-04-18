pipeline {
    agent none
    stages {
        stage('Build') {
			agent { 
				dockerfile {
					filename 'Dockerfile'
					args '--privileged -v /app:/app'
				} 
			}
			steps {
                sh ' '
            }
        }
		stage('Deliver') {
			steps {
                sh 'npm start'
            }
        }
    }
}