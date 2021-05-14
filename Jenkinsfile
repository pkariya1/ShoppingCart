pipeline{
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage("Maven build") {
            steps {
              sh "mvn clean package"
            }
        }
        stage('build docker image'){
        	steps{
       			 sh 'docker build -t prashk7/my-app .'
       			 }
    	}
    	stage('push docker image'){
    		steps{
    		withCredentials([string(credentialsId: 'docker hub-pwd', variable: 'dockerhubPwd')]) {
        	// some block
        	sh 'docker login -u prashk7 -p ${dockerhubPwd}'
        	}
        		sh 'docker push prashk7/my-app'
        	
        	}
    	}
    	stage('Run container on Docker server'){
        	steps{
        	  sh 'docker run -p 8083:8083 -t prashk7/my-app'
        	  
        	  }
    	}
        
        
        
    }
    
    
}