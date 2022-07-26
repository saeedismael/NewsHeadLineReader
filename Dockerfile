FROM openjdk:8-jdk-alpine
COPY target/xmltohtml-0.0.1-SNAPSHOT.jar xmltohtml-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/xmltohtml-0.0.1-SNAPSHOT.jar"]