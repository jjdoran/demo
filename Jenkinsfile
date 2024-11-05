pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/jjdoran/demo', branch: 'main')
      }
    }

    stage('Deploy Terraform') {
      steps {
        sh 'terraform '
        sh 'terraform init'
      }
    }

  }
}