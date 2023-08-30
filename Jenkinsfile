pipeline {
    agent any
    
    environment {
        IMAGE_NAME = "my-express-app"
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from version control here
                // For example: git checkout ...
            }
        }
        
        stage('Build') {
            steps {
                script {
                    def dockerImage = docker.build("${env.IMAGE_NAME}:${BUILD_NUMBER}")
                    sh "docker tag ${dockerImage.id} ${env.IMAGE_NAME}:latest"
                }
            }
        }
        
        stage('Test') {
            steps {
                // Run your tests here
                // For example: sh "npm test"
            }
        }
        
        stage('Deploy') {
            steps {
                sh "docker push ${env.IMAGE_NAME}:${BUILD_NUMBER}"
                sh "docker push ${env.IMAGE_NAME}:latest"
            }
        }
    }
    
    post {
        success {
            echo "Build and deployment successful"
        }
        failure {
            echo "Build or deployment failed"
        }
    }
}
