pipeline{
        agent any
        stages{
        stage('Ansible'){
            steps{
                sh "bash ./scripts/ansible.sh"
                
            }
        }
	    stage('Test'){
            steps{
                sh "bash ./scripts/test.sh"
                
            }
        }
        stage('Build'){
            steps{
                sh "bash ./scripts/build.sh"
            }
        }
        stage('Push'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerp', usernameVariable: 'dockeru')]) {
                sh "bash ./scripts/push.sh"
                }
            }
        }
	    stage('Deploy'){
            steps{
                sh "bash ./scripts/deploy.sh"
            }
        }
    }
}