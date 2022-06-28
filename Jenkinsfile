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
                        slackSend baseUrl: 'https://hooks.slack.com/services/', channel: '#project', message: 'Project_built!!!!!!', teamDomain: 'https://app.slack.com/client/T03MLC45XRA/composer/draft-ae7e6a74-9902-449f-826f-ba641730e36e', tokenCredentialId: 'slack'}

            }
}
