pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id') // Replace with your credentials ID
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key') // Replace with your credentials ID
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/saichandpolasa/devops-training.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
