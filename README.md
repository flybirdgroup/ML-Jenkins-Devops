# ML-Jenkins-Devops


#1 create Jenkinsfile

#2 build your pipeline script
```
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
              sh "while ! docker build -t deploy . ; do sleep 30 ; done ; echo succeed"
            }
        }
    }

  }
}
```

#3 go to your jenkins to run your pipeline
