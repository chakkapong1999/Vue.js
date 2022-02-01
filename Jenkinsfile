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
    environment {
        imageName = 'chakkapong/vue-test'
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

        // stage ('Push Image') {
        //     steps {
        //         script {
        //             docker.withRegistry([ credentialsId: "docker-hub-credentials", url: "" ]) {
        //                 dockerImage.push('demo')
        //             }
        //         }
        //     }
        // }

        stage('Run Container') {
            steps {
                script {
                    dockerImage.run('-p 8500:8080')
                }
            }
        }
    }
}
