pipeline {
    
    agent any  
 
    stages {
 
        stage('Init'){
            steps {
                echo 'Init'
                echo '******************************'
            }
        }
 
        stage('Build') {
            steps {
                bat 'npm run build'
            }
        }
 
    }
}
