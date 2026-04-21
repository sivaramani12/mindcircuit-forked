pipeline {
    agent any

    stages {
	
        stage('checkout') {
            steps {
                echo 'git checkout stage'
				git branch: 'main', url: 'https://github.com/devopstraininghub/mindcircuit17d.git'
            }
        }

        stage('build') {
            steps {
                echo 'Building with maven '
				sh 'mvn clean install '
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to tomcat'
				deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat', path: '', url: 'http://54.157.34.181:8080/')], contextPath: 'insta', war: '**/*.war'
				
            }
        }		
		
    }
}
