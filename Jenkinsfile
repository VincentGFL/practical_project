pipeline{
        agent any
        environment {
            DB_URI = '${JDB_URI}'
            KEY = '${KEY2}'
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
                echo 'export DB_URI=${JDB_URI}'
                echo 'export KEY=${KEY2}'
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/test.sh"
                
            }
        }
        stage('Build'){
            steps{
                echo 'export DB_URI=${JDB_URI}'
                echo 'export KEY=${KEY2}'
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
                echo 'export DB_URI=${JDB_URI}'
                echo 'export KEY=${KEY2}'
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "./scripts/deploy.sh"
                
            }
        }
    }
}