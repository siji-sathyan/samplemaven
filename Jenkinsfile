
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
        stage('clean') {
            steps {
                sh 'mvn clean'
            }
        }
        stage('install') {
            steps {
                sh 'mvn install'
               
            }
        }
        stage('package') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
