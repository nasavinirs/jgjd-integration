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
        stage('Install') {
            steps {
                withMaven(maven : 'maven3.6.3') {
                    sh 'mvn install'
                }
            }
        }
        stage('Docker Build') {
            agent any
            steps {
              sh 'docker build -t idockertest/jgjd-integration:latest .'
            }
        }
    }
}