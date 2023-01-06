
pipeline {
    agent any
    

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
                sh "terraform apply --auto-approve"
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
