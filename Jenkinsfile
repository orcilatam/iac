@Library('sharedlib')
import static com.orcilatam.devops.Const.*
import static com.orcilatam.devops.Stage.*

def kubeConfig = 'kubeconfig-multivac'
def kubeNamespace = 'default'

pipeline {
  agent any

  stages {
/*
    stage('Construcción de cluster') {
      steps {
        script {
          // TODO
        }
      }
    }
*/
    stage('Instalación de LoadBalacer e Ingress Controller') {
      steps {
        script {
          installNginxIngressController(this, kubeConfig, kubeNamespace, 'aquarella')
        }
      }
    }

  }
}
