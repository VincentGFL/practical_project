pipeline{
        agent any
        stages{
        stage('Ansible'){
            steps{
                
                sh "./scripts/ansible.sh"
            }
        }
	    stage('Test'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/test.sh"
                
            }
        }
        stage('Build'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/build.sh"
            }
        }
        stage('Push'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerp', usernameVariable: 'dockeru')]) {
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/push.sh"
                }
            }
        }
	    stage('Deploy'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/deploy.sh"
            }
        }
    }
}