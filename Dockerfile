FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
ENV SPRING_DATASOURCE_URL=${db_url}
ENV SPRING_DATASOURCE_USERNAME=${db_username}
ENV SPRING_DATASOURCE_PASSWORD=${db_password}
COPY --from=build /target/course-0.0.1-SNAPSHOT.jar /app/course.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java","-jar","course.jar"]