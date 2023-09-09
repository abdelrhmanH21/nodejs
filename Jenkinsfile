pipeline {
    agent any
    tools{
        nodejs 'my-nodejs'
    } 
    
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm i --legacy-peer-deps'
                sh 'npm install'
                sh 'npm ci'
            }
        }
        
        stage('Run Tests') {
            steps {
                sh 'npm run test:unit'
            }
        }
        
        stage('Build') {
            steps {
                sh 'npm run build'
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
