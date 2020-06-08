# Dockerfile to build Maven with Tomcat container
# Based on Ubuntu:16.04
FROM ubuntu:16.04
RUN apt update
RUN apt install -y git
RUN apt install -y default-jdk
RUN apt install -y tomcat8
RUN apt install -y maven
EXPOSE 8080
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home/user/
WORKDIR /home/user/boxfuse-sample-java-war-hello
RUN mvn package
ADD /home/user/boxfuse-sample-java-war-hello/hello-1.war /var/lib/tomcat8/webapps/
RUN service tomcat8 restart




