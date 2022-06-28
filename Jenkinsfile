pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                    sh 'mvn package'
            }
        }
         stage('Run') {
            steps {
                 sh 'sudo nohup java -jar target/ReadBreakinNews-0.0.1-SNAPSHOT.jar &'
            }
}


            
            
}
            post {

                success {
                        slackSend baseUrl: 'https://hooks.slack.com/services/', channel: '#project', message: 'Project_built!!!!!!', teamDomain: 'fursa-global', tokenCredentialId: 'slack'}

            }
}
