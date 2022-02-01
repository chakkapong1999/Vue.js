// pipeline {
    
//     agent any  
 
//     stages {
 
//         stage('Init'){
//             steps {
//                 bat 'npm install'
//             }
//         }

//         stage('Build') {
//             steps {
//                 bat 'npm run build'
//             }
//         }

//         stage('Deploy') {
//             steps {
//                 bat "firebase deploy --only hosting --token ${env.FIREBASE_TOKEN}"
//             }
//         }
//     }
// }

pipeline {
    agent docker { image 'node:14.18.3-alpine' }

    stages {
        stage('Build Image') {
            sh 'node --version'
        }
    }
}
