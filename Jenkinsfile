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
                    sh "./scripts/build.sh"
                    if (env.rollback == 'false'){
                            docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
                                image.push("${env.app_version}")
                            }
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