FROM openjdk:17-alpine AS builder
WORKDIR /opt/testing_git_actions
COPY build.gradle build.gradle

COPY --from=builder /opt/testing_git_actions/build/*.jar testing_git_actions.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","demo.jar"]