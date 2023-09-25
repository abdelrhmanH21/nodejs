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
                sh 'npm install'
                sh 'npm ci'
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
