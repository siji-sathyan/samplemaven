
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
        stage('Sonarqube analysis') {
            steps {
                script {
                    withSonarQubeEnv('sonar'){
                        sh 'ls'
                        sh 'mvn sonar:sonar -DskipTests'
                     }
                 }
            }
        }
        stage('package') {
            steps {
                sh 'mvn package'
                archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
                
            }
        }
        
        
    }
}
