FROM openjdk:8
ADD target/my-samplemaven.war my-samplemaven.war
ENTRYPOINT ["java", "-war","my-samplemaven.war"]
EXPOSE 80
