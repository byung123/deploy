FROM amazoncorretto:11-alpine-jdk
#LABEL authors="user"
ARG JAR_FILE=target/*.jar
ARG PROFILES
#ARG ENV   # 없어도 된대요
COPY ${JAR_FILE} app.jar

#ENTRYPOINT ["top", "-b"]
#ENTRYPOINT ["java", "-jar", "app.jar"] 원래 깃bash에서 이렇게 명령어를 기입해서 실행햇는데 밑에는 설정(옵션)을 넣어서 실행하는 것
#ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}", "-jar", "app.jar"]
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-jar", "app.jar"]