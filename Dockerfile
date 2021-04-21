FROM tomcat:jdk8-openjdk-slim-buster
LABEL maintainer="oamosu14@gmail.com"

ADD target/demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
