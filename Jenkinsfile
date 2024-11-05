pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/jjdoran/demo', branch: 'main')
      }
    }
    stage('Terraform Init') {
      steps {
            script {
                    sh 'cd Terraform;terraform init'
                  }
            }
    }
    stage('Terraform Plan') {
       steps {
             script {
                    sh 'cd Terraform;terraform plan'
             }
          }
    }
    stage('Terraform Apply') {
       steps {
             script {
                     sh 'cd Terraform;terraform apply -auto-approve'
                    }
           }
    }
  }
}
