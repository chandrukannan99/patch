pipeline {
    agent any
    stages {
        stage('Run Shell') {
            steps {
                sh 'echo "Hello from Jenkins!"'
                sh ' cd /tmp; mkdir exec'
            }
        }
    }
}

