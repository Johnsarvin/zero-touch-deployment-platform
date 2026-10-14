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
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl rollout status deployment/zero-touch-app --timeout=120s'
            }
        }

        stage('Verify') {
            steps {
                sh 'kubectl get deployment zero-touch-app'
                sh 'kubectl get pods -l app=zero-touch-app'
                sh 'kubectl get service zero-touch-service'
            }
        }
    }
}
