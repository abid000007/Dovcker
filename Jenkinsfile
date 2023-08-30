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
      parallel {
        stage('docker') {
          steps {
            sh 'docker build -t backend .'
          }
        }

        stage('docker stop script') {
          steps {
            sh '''#!/bin/bash

IMAGE_NAME="backend"
IMAGE_TAG="latest"

# Get container IDs by filtering using image name and tag
CONTAINER_IDS=$(docker ps -aqf "ancestor=${IMAGE_NAME}:${IMAGE_TAG}")

# Loop through container IDs and stop each container
for CONTAINER_ID in $CONTAINER_IDS; do
    docker stop $CONTAINER_ID
done
'''
          }
        }

      }
    }

    stage('docker run') {
      steps {
        sh 'docker run -d --network host backend '
      }
    }

  }
}