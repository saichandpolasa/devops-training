
pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'java -version'
      }
    }
  }
}