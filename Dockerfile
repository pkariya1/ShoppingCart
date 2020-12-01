FROM openjdk:8
EXPOSE 8083
ADD target/shopping-0.0.1-SNAPSHOT.jar shopping-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/shopping-0.0.1-SNAPSHOT.jar"]