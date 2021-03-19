FROM quay.cnqr.delivery/sitools/java-with-curl:master

# environment
EXPOSE 8080

# executable
ADD target/spring-petclinic-2.4.2.jar app.jar
COPY entrycommand.sh entrycommand.sh

RUN ["chmod", "+x", "entrycommand.sh"]
ENTRYPOINT ["/bin/sh", "+x", "./entrycommand.sh"]
