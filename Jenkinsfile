pipeline {
    agent {
        label 'cartforge-agent'
    }

    stages {

        stage('Clone Source Code') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Application') {
            steps {
                sh 'echo "Building CartForge application..."'
                sh 'npm run build --if-present'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'echo "Running CartForge tests..."'
                sh 'npm test --if-present'
            }
        }

        stage('Package Application') {
            steps {
                sh 'tar -czf CartForge-artifact.tar.gz --exclude=.git .'
            }
        }

        stage('Deliver Artifact') {
            steps {
                archiveArtifacts artifacts: 'CartForge-artifact.tar.gz',
                    fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'CartForge pipeline completed successfully!'
        }

        failure {
            echo 'CartForge pipeline failed.'
        }
    }
}
