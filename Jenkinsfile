pipeline {
    agent any

    options {
        timestamps()
        timeout(time: 15, unit: 'MINUTES')
    }

    environment {
        AWS_REGION = "eu-north-1"
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/saichandpolasa/devops-training']],
                    extensions: [[$class: 'CloneOption', shallow: true, depth: 1]]
                ])
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
