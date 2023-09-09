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
                sh 'npm install' // Install Node.js app dependencies
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
    }
}
