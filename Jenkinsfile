pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t zero:v2 .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}
