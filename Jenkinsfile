pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
			steps {
                sh 'sudo npm install'
            }
        }
		stage('Deliver') {
			steps {
                sh 'sudo npm start'
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