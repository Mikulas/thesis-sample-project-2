pipeline {
    agent none
    stages {
        stage('Jekyll Build') {
            agent {
                docker 'composer:1.8'
            }
            steps {
                checkout scm
                sh 'make build'
            }
        }
        stage('Deploy') {
            agent {
                docker 'eeacms/rsync:1.2'
            }
            steps {
                sh 'make deploy'
            }
        }
    }
}
