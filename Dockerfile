# Dockerfile to build Maven with Tomcat container
FROM tomcat:latest
RUN apt update
RUN apt install -y git
RUN apt install -y default-jdk
RUN apt install -y maven
EXPOSE 8080
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home/user/box
WORKDIR /home/user/box
RUN mvn package
Run cp /home/user/box/target/hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]





