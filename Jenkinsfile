pipeline{
        agent any
        environment {
            DB_URI=${DB_URI}
            KEY=${KEY}
            }
        stages{
        stage('Ansible'){
                steps{
                    sh "./scripts/ansible.sh"
                }
            }
	    stage('Test'){
                steps{
                    sh "./scripts/test.sh"
                }
            }
            stage('Build'){
                steps{
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerp', usernameVariable: 'dockeru')]) {
                    sh "./scripts/build.sh"
                    }
                }
            }
	    stage('Deploy'){
                steps{
                    sh "./scripts/deploy.sh"
                }
            }
        }
}