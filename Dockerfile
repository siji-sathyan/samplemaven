FROM openjdk:8
ADD target/samplemaven.war samplemaven.war
COPY target/samplemaven.war samplemaven-0.0.2.war
COPY pom.xml pom.xml
COPY maven-entrypoint.sh maven-entrypoint.sh
EXPOSE 80
