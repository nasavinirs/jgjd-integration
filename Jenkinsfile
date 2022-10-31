pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                withMaven(maven : 'maven3.6.3') {
                    sh 'mvn clean compile'
                }
            }
        }
        stage('Test') {
            steps {
                withMaven(maven : 'maven3.6.3') {
                    sh 'mvn test'
                }
            }
        }
        stage('Deploy') {
            steps {
                withMaven(maven : 'maven3.6.3') {
                    sh 'mvn deploy'
                }
            }
        }
    }
}