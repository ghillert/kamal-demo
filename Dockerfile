FROM bitnami/java:21-debian-11
RUN apt install curl
EXPOSE 8080
ARG JAR_FILE=target/kamal-demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} kamal-demo.jar
ENTRYPOINT ["java","-jar","/kamal-demo.jar"]