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
                bat 'firebase deploy --only hosting --token "1//0g7OCUE6wtxFiCgYIARAAGBASNwF-L9Irpw0dg-i9pxASn_1VDEPJJKb0qzWGyYSWSeCO2E8hXU8I0gt0eS2QqBkrGxrTIBPtYYI"'
            }
        }
 
    }
}
