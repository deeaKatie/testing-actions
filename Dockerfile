FROM openjdk:17-alpine AS builder
ADD /opt/testing_git_actions/build/*.jar testing_git_actions.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","testing_git_actions.jar"]