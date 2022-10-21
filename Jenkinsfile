node{
    
    def mavenHome =  tool name: "maven3.8.6"
    
    stage('CheckoutCode')
   {
   git credentialsId: '91623ff1-a5ae-475a-84ac-aac307efc4ec', url: 'https://github.com/niraali-projects/jenkins.git'
   }
    
    stage('Build')
   {
    sh "${mavenHome}/bin/mvn clean package"
   }
   
   stage('SonarQubeRepo')
   {
    sh "${mavenHome}/bin/mvn clean package sonar:sonar"
   }
   
   stage('uploadArtifactRepoToNexus')
   {
    sh "${mavenHome}/bin/mvn clean package deploy"
   }

   stage('DeployappServer')
   {
    sshagent(['45814e3e-df77-4c1c-912d-f4d3410453dc']) {
        sh "scp -o StrictHostKeyChecking=no target/niraail-springboot-0.0.1-SNAPSHOT.war ec2-user@65.0.4.251:/opt/apache-tomcat-9.0.68/webapps/"
    }
   }
 
   stage('EmailNotification')
   { 
     emailext body: 'Build is successfully deployed', subject: 'Build status ', to: 'gopalak33333@gmail.com'
   }

}