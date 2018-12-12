FROM tomcat:8.0
#application deplpoyment
COPY maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war 
RUN docker run -it --rm tomcat:8.0
CMD ["catalina.sh", "run"]
