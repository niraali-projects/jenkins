FROM tomcat:8.0.20-jre8
COPY target/niraail-springboot-0.0.1-SNAPSHOT*.war /usr/local/tomcat/webapps/niraail-springboot-0.0.1-SNAPSHOT.war
