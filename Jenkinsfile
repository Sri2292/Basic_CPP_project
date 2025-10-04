pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mkdir -p build && cd build && cmake .. && make'
            }
        }
        stage('Test') {
            steps {
                sh 'cd build && ctest'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'build/*', allowEmptyArchive: true
        }
    }
}
