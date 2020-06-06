#!/bin/bash
#java -Djava.security.egd=file:/dev/./urandom -Dlogs_dir=./logs/apih/ -Dlogging.config=/app/logback-spring.xml -Dspring.config.additional-location=/app/config/override.yaml -jar app.jar
#java -Dlogging.config=./target/logger/logback-spring.xml  -Dspring.config.additional-location=./src/main/resources/override.yaml -jar target/mso-api-handler-infra-1.4.0-SNAPSHOT.jar
java -Dspring.config.additional-location=./src/main/resources/override.yaml -jar target/mso-api-handler-infra-1.4.0-SNAPSHOT.jar
