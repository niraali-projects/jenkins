FROM tomcat:jdk11-temurin-jammy
COPY target/niraail-springboot-0.0.1-SNAPSHOT*.war /usr/local/tomcat/webapps/niraail-springboot-0.0.1-SNAPSHOT.war



