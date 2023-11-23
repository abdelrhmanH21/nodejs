pipeline { boda
    agent any
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
    }
}

pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Installation') {
            steps {
                script {
                    // Use nvm to install the specified Node.js version
                    sh "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash"
                    sh "source ~/.nvm/nvm.sh && nvm install "
                }
            }
        }

        stage('Dependencies') {
            steps {
                script {
                    // Change to the directory containing your Node.js application
                    dir('/nodejs') {
                        // Install Node.js dependencies using npm
                        sh "npm install"
                    }
                }
            }
        }

    }

    post {
        success {
            echo 'Pipeline succeeded!'

        }
        failure {
            echo 'Pipeline failed. Check the build logs for more information.'
        }
    }
}
