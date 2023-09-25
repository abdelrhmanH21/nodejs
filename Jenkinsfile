pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Unit Test') {
            steps {
                // Run your unit tests here 
                sh 'npm run test:unit'
            }
        }
        stage('Build') {
            steps {
                // Build your Node.js application (e.g., npm install)
                sh 'npm install'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
                sh 'npm ci'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    sudo docker.build('myapp:1.0')
                }
            }
        }
    }
}
