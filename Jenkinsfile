pipeline{
        agent any
        environment {
        USER_CREDENTIALS = credentials('docker-hub-credentials')
            }
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
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerp', usernameVariable: 'dockeru')]) {
                    sh "chmod +x -R ${env.WORKSPACE}"
                    sh "docker login -u $dockeru -p $dockerp"
                    sh "export DB_URI=${DB_URI}"
                    sh "export KEY=${KEY}"
                    sh "./scripts/build.sh"
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