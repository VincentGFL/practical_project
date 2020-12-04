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
		            sh "chmod +x -R ${env.WORKSPACE}"
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