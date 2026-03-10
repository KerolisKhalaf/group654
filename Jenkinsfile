pipeline{
    agent {
        label 'docker'
    }
    stages{
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t keroliskhalaf1/simpleweb -f Dockerfile .'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {        
                    env.DOCKRR_BUILDKIT = 1
                    sh 'docker run -e CI=true keroliskhalaf1/simpleweb npm test'

                }
            }
        }
    }
}