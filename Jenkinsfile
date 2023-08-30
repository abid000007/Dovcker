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
        sh '''echo "9991" | sudo -S docker build -t backend .
'''
      }
    }

  }
}