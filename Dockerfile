FROM openjdk:11-slim as build

EXPOSE 8081

# JAR файл прилжения
ARG JAR_FILE

CMD mkdir /opt/app
COPY target/*.jar /opt/app/organizationService.jar

ENTRYPOINT ["java","-jar","/opt/app/organizationService.jar"]