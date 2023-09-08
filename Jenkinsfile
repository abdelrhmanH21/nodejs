pipeline {
    agent {
        docker {
            image 'node:14'
            args '-u root'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install' // Install Node.js app dependencies
            }
        }
    }
}
