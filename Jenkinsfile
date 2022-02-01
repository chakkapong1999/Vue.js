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
    agent any
    environtment {
        imageName = "vue-test"
        dockerImage = ''
    }

    stages {
        stage('Build Image') {
            steps {
                script {
                    dockerImage = docker.build(imageName,"-f Dockerfile .")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    docker.run("-p 8500:8080",dockerImage)
                }
            }
        }
    }
}
