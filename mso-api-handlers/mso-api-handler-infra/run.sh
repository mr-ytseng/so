#!/bin/bash
mvn install -DskipTests
java -jar -Dspring.config.additional-location=./overrided.yaml target/mso-api-handler-infra-1.4.0-SNAPSHOT.jar

