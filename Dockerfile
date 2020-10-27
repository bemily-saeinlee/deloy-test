FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG DEPENDENCY=build/dependency
COPY ${DEPENDENCY}/BOOT-INF/classes BOOT-INF/classes
COPY ${DEPENDENCY}/BOOT-INF/lib BOOT-INF/lib
COPY ${DEPENDENCY}/META-INF META-INF
COPY ${DEPENDENCY}/org org
ARG SPRING_PROFILES_ACTIVE
ENV SPRING_PROFILES_ACTIVE=$SPRING_PROFILES_ACTIVE
ENTRYPOINT ["java","org.springframework.boot.loader.JarLauncher"]