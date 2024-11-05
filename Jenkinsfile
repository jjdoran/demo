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
                    sh 'terraform init'
                  }
            }
    }
    stage('Terraform Plan') {
       steps {
             script {
                    sh 'terraform plan -out=tfplan'
             }
          }
    }
    stage('Terraform Apply') {
       steps {
             script {
                     sh 'terraform apply -auto-approve tfplan'
                    }
           }
    }
    stage('Upload State to S3') {
       steps {
             script {
                    sh 'aws s3 cp terraform.tfstate s3://necdemo'
                    }
           }
    }
  post {
        always {
            cleanWs()
        }
  }
 }
}
