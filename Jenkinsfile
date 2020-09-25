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
              sh "sh rm-container.sh"
            }
        }
    }

    stage('docker delete none images'){
        steps {
            script{
                sh "while ! docker build -t deploy . ; do sleep 30 ; done ; echo succeed"
             }

        }
    }
    stage('docker run'){
        steps {
            script{
                sh "docker run -p 5000:5000 --name deploy ML-devops"
            }
        }
    }
  }
}