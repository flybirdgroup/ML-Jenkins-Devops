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
    stage('docker delete none images'){
        steps {
            script{
                sh "wdocker rmi -f $(docker images -f "dangling=true" -q)"
             }

        }
    }
  }
