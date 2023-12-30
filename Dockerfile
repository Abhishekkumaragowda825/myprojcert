# Use the devopsedu/webapp as the base image
FROM devopsedu/webapp

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of your PHP website to the container
COPY . /var/www/html/

# Expose the port on which your PHP application runs
EXPOSE 80

# Define the command to start the PHP application
CMD ["apache2ctl", "-D", "FOREGROUND"]
