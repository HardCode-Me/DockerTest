FROM tomcat:latest
WORKDIR /user
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN apt-get update
RUN apt-get install maven -y
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
RUN cp target/hello-1.0.war /usr/local/tomcat/webapps/
#EXPOSE 8080
#CMD ["catalina.sh", "run"]