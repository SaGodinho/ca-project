node {
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      //git 'git@github.com:SaGodinho/ca-project.git'
      git 'https://github.com/SaGodinho/ca-project.git'
   }
	stage('Build') {
			sh 'echo hello world'
			sh 'docker build -t ca-app .'

	}
}
