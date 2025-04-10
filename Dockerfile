# Use official Tomcat base image
FROM tomcat:10.1-jdk17

# Maintainer label (optional)
LABEL maintainer="yourname@example.com"

# Remove default web apps (optional cleanup)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your custom WAR file (replace with your app)
# Example: Assuming `myapp.war` is in the same directory as the Dockerfile
COPY Amazon.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat (default CMD already handles it)
CMD ["catalina.sh", "run"]

