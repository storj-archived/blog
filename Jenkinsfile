node('node') {
  try {

    stage('Checkout') {
        checkout scm
    }

    stage('Build Images') {
      sh 'make build'
    }

    stage('Push Images') {
      if (env.BRANCH_NAME == "master") {
        echo 'Push to Repo'
        sh 'make push'
      }
    }

  }
  catch (err) {
    currentBuild.result = "FAILURE"

  }
  finally {

    stage('Cleanup') {
      sh 'make clean'
      deleteDir()
    }

  }
}
