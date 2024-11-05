pipeline {
  agent any
  withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'Demo', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
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
                    sh 'cd Terraform;terraform plan -out=tfplan'
             }
          }
    }
    stage('Terraform Apply') {
       steps {
             script {
                     sh 'cd Terraform;terraform apply -auto-approve tfplan'
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
  }
 }
}
