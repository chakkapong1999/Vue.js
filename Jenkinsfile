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
                bat "firebase deploy --only hosting --token ${env.FIREBASE_TOKEN}"
            }
        }
    }
}

// pipeline {
//     agent any
//     environment {
//         docker_credentials = credentials('chakkapong_dockerhub')
//         imageName = 'chakkapong/vue-test'
//         dockerImage = ''
//     }

//     stages {
//         stage('Build Image') {
//             steps {
//                 script {
//                     dockerImage = docker.build(imageName,"-f Dockerfile .")
//                 }
//             }
//         }

//         stage ('Push Image') {
//             steps {
//                 script {
//                     docker.withRegistry('', "${docker_credentials}") {
//                         dockerImage.push('demo')
//                     }
//                 }
//             }
//         }

//         stage('Run Container') {
//             steps {
//                 script {
//                     dockerImage.run('-p 8500:8080')
//                 }
//             }
//         }
//     }
// }
