pipeline{
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-terraform')
        AWS_SECRET_ACCESS_KEY = credentials('aws-terraform')
    }
    stages{
        stage('Checkoutt'){
            steps{
                git branch: 'main', url: 'https://github.com/SB-AWSDevops/terraform-jenkins'
            }
        }
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        
    }
}