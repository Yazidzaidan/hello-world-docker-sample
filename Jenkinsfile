pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Checkout Scm') {
      steps {
        git 'https://github.com/Yazidzaidan/hello-world-docker-sample.git'
        echo 'Checkout Scm'
      }
    }

    stage('Maven Build 0') {
      steps {
        sh 'mvn install'
        echo 'Maven Build 0'
      }
    }

    stage('No Converter-0') {
      steps {
        echo 'No converter for Builder: com.cloudbees.dockerpublish.DockerBuilder'
      }
    }

    stage('Build Image') {
          steps {
            echo 'Build docker images'
            sh 'echo EnvVar = $EnvVar'
          }
        }

  }
  tools {
    jdk 'Java17'
  }
  triggers {
    pollSCM('* * * * *')
  }
}