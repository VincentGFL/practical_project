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
		            sh "chmod +x -R ${env.WORKSPACE}"
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials')
                    sh "./scripts/build.sh"
                    
                
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