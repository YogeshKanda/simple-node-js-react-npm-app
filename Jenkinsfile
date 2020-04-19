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
                sh 'npm start'
            }
        }
    }
	post { 
        success { 
            echo 'I will always say Hello again!'
        }
		failure{
			echo 'Build Failed'
		}
    }
}