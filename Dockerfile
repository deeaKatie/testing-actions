FROM openjdk:17-alpine
WORKDIR /opt/testing_git_actions
COPY /opt/testing_git_actions/build/*.jar testing_git_actions.jar
ENTRYPOINT ["java"]
CMD ["-jar","testing_git_actions.jar"]
EXPOSE 8080