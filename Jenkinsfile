pipeline{
        agent any
        stages{
        stage('Ansible'){
            steps{
                sh "chmod +x -R ${env.WORKSPACE}"
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
                withEnv(['DB_URI=${DB_URI}', 'KEY=${KEY}']){
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/build.sh"
                }
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
                withEnv(['DB_URI=${DB_URI}', 'KEY=${KEY}']){
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/deploy.sh"
                }
            }
        }
    }
}