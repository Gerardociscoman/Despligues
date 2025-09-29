pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo "Hola"
            }
        }

        stage('Build') {
            steps {
                echo "Building project..."
                sh 'mkdir -p build && echo "Hello World" > build/output.txt'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'if [ -f build/output.txt ]; then echo "Test Passed"; else echo "Test Failed"; exit 1; fi'
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'build/**', fingerprint: true
            }
        }

        stage('Deploy to Minikube') {
            steps {
                echo "Deploying to Minikube..."
                // Esto asume que tienes un deployment.yaml en tu repo
                sh 'kubectl apply -f k8s/deployment.yaml'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check logs!'
        }
    }
}
