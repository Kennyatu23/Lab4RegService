#Use a base image with java and an appropriate version (pulls and adds to image)
FROM openjdk:17
#Set the working directory inside the container(work folder called app)
WORKDIR /app

# Copy the Jar file fro target directory to the container at /app
#Gets all code and puts in folder app)
#Copy from target name of project and copy to app folder
COPY target/RegistrationService-0.0.1-SNAPSHOT.jar /app

# Expose the port that the Spring Boot application will run on
#poke a hole in container for communication with container
EXPOSE 8081


# COMMAND TO RUN THE APPLICATION
#Once we run image this is how to run application
#Java run Jar file "Named"
CMD ["java", "-jar", "RegistrationService-0.0.1-SNAPSHOT.jar"]