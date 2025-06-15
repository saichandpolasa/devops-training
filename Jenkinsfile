pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Assuming your Dockerfile is in the root of your repository
                    sh 'docker build -t saichand492/my-first-docker-image:latest .'
                }
            }
        }
        // Add more stages as needed (e.g., push, deploy)
    }
}
