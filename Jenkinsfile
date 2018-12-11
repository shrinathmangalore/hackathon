#!groovy

node {
   stage ('Git checkout'){
   git credentialsId: 'Git_Credentials', url: 'https://github.com/shrinathmangalore/hackathon.git'
   }
 stage('mavenExecutions'){
        sh 'mvn clean package'
    }
   stage('Build Docker image'){
      sh 'docker build -t shrinathdm/maven-web-application'
   }
   stage('Push Docker image'){
      withCredentials([string(credentialsId: 'Docker_Hub_Pwd', variable: 'Docker_Hub_Pwd')]) {
         sh "docker login -u shrinathdm -p ${Docker_Hub_Pwd}"
       }
       sh 'docker push shrinathdm/maven-web-application'
}
