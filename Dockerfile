# Dockerfile to build Maven with Tomcat container
# Based on tomcat
FROM tomcat:latest
RUN apt update
RUN apt install -y git
RUN apt install -y maven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home/user/box
WORKDIR /home/user/box
RUN mvn package
Run cp /home/user/box/target/hello-1.0.war /usr/local/tomcat/webapps/





