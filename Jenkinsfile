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

        stage('Deploy') {
            steps {
                bat 'firebase deploy --only hosting'
            }
        }
 
    }
}
