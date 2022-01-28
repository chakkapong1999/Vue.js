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
                sh 'npm run build'
            }
        }
 
    }
}
