pipeline {
    
    agent any  
 
    stages {
 
        stage('Init'){
            steps {
                bat 'npm install'
            }
        }
        
        stage('Init 2'){
            steps {
                bat 'npm install -g firebase-tools'
            }
        }
 
        stage('Build') {
            steps {
                bat 'npm run build'
            }
        }
        
        stage('Deploy') {
            steps {
                bat 'firebase login'
            }
        }

        stage('Deploy') {
            steps {
                bat 'firebase deploy --only hosting'
            }
        }
 
    }
}
