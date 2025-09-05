pipeline {
    agent any
parameters {
        choice(
            name: 'type',
            choices: ['plan', 'apply', 'destroy'],
            description: 'Choose Terraform action'
        )
    }
    options {
        timestamps()
        timeout(time: 15, unit: 'MINUTES')
    }

    environment {
        AWS_REGION = "us-east-1"
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                    sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                    sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            when {
                expression { params.type == 'apply' }
            }
            steps {
                sh 'terraform apply -auto-approve'
                }
        }

        stage('Terraform Destroy') {
             when {
                expression { params.type == 'destroy' }
            }
            steps {
                sh 'terraform destroy -auto-approve'
                }
        }
    }
}


