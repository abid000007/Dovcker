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
        sh 'docker build -t backend .'
      }
    }

    stage('docker run') {
      steps {
        sh 'docker run -d --network host backend'
      }
    }

    stage('Docker run') {
      steps {
        sh 'docker run -d --network host backend'
      }
    }

  }
}