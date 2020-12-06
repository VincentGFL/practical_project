pipeline{
        agent any
        stages{
        stage('Ansible'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "bash ./scripts/ansible.sh"
            }
        }
	    stage('Test'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "bash ./scripts/test.sh"
                
            }
        }
        stage('Build'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "bash ./scripts/build.sh"
            }
        }
        stage('Push'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerp', usernameVariable: 'dockeru')]) {
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "bash ./scripts/push.sh"
                }
            }
        }
	    stage('Deploy'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "bash ./scripts/deploy.sh"
            }
        }
    }
}