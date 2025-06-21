pipeline {
    agent any
    environment {
    AWS_ACCESS_KEY_ID = credentials('aws-access-key')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    AWS_DEFAULT_REGION = 'eu-north-1'
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
