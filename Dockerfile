FROM tomcat:8-jdk8-temurin
COPY target/niraail-springboot-0.0.1-SNAPSHOT*.war /usr/local/tomcat/webapps/niraail-springboot-0.0.1-SNAPSHOT.war
