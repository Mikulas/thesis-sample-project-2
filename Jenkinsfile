pipeline {
    agent {
        docker 'jekyll/jekyll:3.8'
    }
    stages {
        stage('Jekyll Build') {
            steps {
                checkout scm
                sh 'make build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'make deploy'
            }
        }
    }
}
