pipeline {
    agent any
    stages {
        stage('Terraform Init') {
            steps {
                withAWS(credentials: 'aws-terraform') {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                withAWS(credentials: 'aws-terraform') {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
    }
}
