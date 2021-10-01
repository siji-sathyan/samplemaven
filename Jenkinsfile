
pipeline {
    agent {label 'agent'}
    tools{
        maven 'maven'
    }

    stages {
        stage('git clone') {
            steps {
                git branch: 'main', url: 'https://github.com/siji-sathyan/samplemaven.git'
            }
            
        }
        stage('clean-install') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('package') {
            steps {
                sh 'mvn package'
                archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
            }
        }
        stage('deploy'){
            steps{
                sshagent(['deploy-user']) {
                    sh "scp -o StrictHostKeyChecking=no webapp/target/samplemaven.war ec2-user@3.231.57.155:/opt/apache-tomcat-8.5.71/webapps"
                   
        }
            }
        }
    }
}
