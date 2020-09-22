@Library('sharedlib')
import static com.orcilatam.devops.Const.*
import static com.orcilatam.devops.Stage.*

def tokenId = 'digitalocean-token'
def registry = 'artifactory:8082'
def registryId = 'registry-push-user'

pipeline {
  agent any

  stages {

    stage('Construcción de cluster') {
      steps {
        script {
          standUpInfrastructure(this, tokenId, registry, registryId)
        }
      }
    }

  }
}
