pipeline {
    
    agent any  
 
    stages {
 
        stage('Init'){
            steps {
                bat 'npm install'
            }
        }
 
        stage('Build') {
            steps {
                bat 'npm run build'
            }
        }
 
    }
}
