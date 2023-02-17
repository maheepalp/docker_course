FROM openjdk
RUN mkdir /jars
COPY ./target/*.jar /jars/app.jar
ENTRYPOINT [ "java","-jar", "/jars/app.jar"]