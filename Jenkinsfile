pipeline {
 agent any
stages {

    stage('Check') {
        steps {
            script{
              sh "docker --version"
            }
        }
    }
    stage('build') {
        steps {
            script{
              sh "while ! docker build -t deploy . ; do sleep 60 ; done ; echo succeed"
            }
        }
    }
    stage('docker deploy'){
        steps {
            script{
                sh "docker run -p 5000:5000 deploy"
             }

        }
    }
  }
}