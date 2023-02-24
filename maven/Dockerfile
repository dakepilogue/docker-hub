FROM maven:3.6.3-jdk-8-slim

MAINTAINER zmz8323802@163.com
COPY settings.xml /root/.m2/
COPY ./pom.xml ./

RUN mvn dependency:copy-dependencies
RUN rm -rf target
RUN mvn dependency:go-offline -B -fn -T 1C