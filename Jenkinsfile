pipeline {
    agent any
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
