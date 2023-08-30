pipeline {
  agent any
  stages {
    stage('TEST') {
      steps {
        git(url: 'https://github.com/abid000007/Dovcker', branch: 'main')
      }
    }

    stage('installation') {
      steps {
        sh 'npm i'
      }
    }

    stage('docker') {
      steps {
        sh ' sudo docker build -t backend . && sudo  docker run -d --network host  backend'
      }
    }

  }
}