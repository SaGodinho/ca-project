node {
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      //git 'git@github.com:SaGodinho/ca-project.git'
      //git 'https://github.com/SaGodinho/ca-project.git'
      git credentialsId: 'jenkins_key'

   }
	stage('Build Docker image') {
//			sh 'docker build -t ca-app .'
			sh 'sh -x make_docker_image.sh'
	}
	stage('Test app') {
//		sh 'docker run --rm -t ca-app python tests.py'
//		sh 'sh run_tests.sh'
		withDockerContainer('ca-app'){
			sh 'sh -x run_tests.sh'
		}
	}

/*
	stage('Publish docker image') {
		sh 'echo "not implemented"'
	}
*/

	stage('Deploy to production'){
		sh 'sh -x deploy_to_production.sh'
	}
}
