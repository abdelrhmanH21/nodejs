pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Install Dependencies') {
            steps {
                sh 'npm i --legacy-peer-deps'
                sh 'npm ci'
            }
        }
        
        stage('Unit Test') {
            steps {
                // Run your unit tests here
                sh 'npm run test:unit'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    docker.build('your-image-name')
                }
            }
        }
    }
  }
}
