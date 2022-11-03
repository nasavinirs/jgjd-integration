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
        stage('Package') {
            steps {
                withMaven(maven : 'maven3.6.3') {
                    sh 'mvn package'
                }
            }
        }
        stage('Docker Build') {
            steps {
              sh 'docker build -t idockertest/jgjd-integration:latest .'
            }
        }
        stage('Docker Push') {
            steps {
              sh 'docker push idockertest/jgjd-integration:latest'
            }
        }
    }
}