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
                bat 'firebase deploy --only hosting --token 1//0gUEI3UjrT-2iCgYIARAAGBASNwF-L9IrVoaNXZfNtQq5OmabRG0dBgaJ4i-NuinWCVNKxVSYeQX7_mJdu0CTQ7tq50xLtEdxYmk'
            }
        }
 
    }
}
