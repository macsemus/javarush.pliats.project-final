FROM openjdk:17-slim
ARG JAR_FILE=target/JiraRush.jar
COPY ./src/main/resources /src/main/resources
COPY ./resources /resources
COPY target /
COPY ${JAR_FILE} JiraRush.jar
ENTRYPOINT ["java","-jar","/JiraRush.jar"]