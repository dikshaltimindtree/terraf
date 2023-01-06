
pipeline {
    agent any
    parameters {
        string( name: 'AWS_ACCESS_KEY_ID', defaultValue: 'AKIAXZQOX4Y6R4U6THXS'),
        string( name: 'AWS_SECRET_ACCESS_KEY', defaultValue: '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'),
        string( name: 'AWS_REGION', defaultValue: 'ap-south-1')
    }

    environment {
        env.access_key = AWS_ACCESS_KEY_ID
        env.secret_key = AWS_SECRET_ACCESS_KEY
        env.region = AWS_REGION
    }

    stages {
        stage ('Terraform Init'){
            steps {
                sh "terraform init"
            }
        }
        stage ('Terraform Plan'){
            steps {
                sh "terraform plan" 
            }
        }
        stage ('Terraform Apply'){
            steps {
                sh "terraform apply -auto-approve"
            }
        }

        stage('TF Destroy Confirm?') {
            steps {
                script {
                    timeout(time: 4, unit: 'MINUTES') {
                        input(id: "TF Apply", message: "DO you want to destroy created Resources?", ok: 'Destroy')
                    }
                }
            }
        }
        stage ('Terraform Destroy'){
            steps {
                sh "terraform apply -auto-approve"
            }
        }
    }
}
