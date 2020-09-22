@Library('sharedlib')
import static com.orcilatam.devops.Const.*
import static com.orcilatam.devops.Stage.*

def registry = 'artifactory:8082'

pipeline {
  agent any

  stages {

    stage('Construcción de cluster') {
      steps {
        script {
          standUpInfrastructure(script, registry)
        }
      }
    }

  }
}
