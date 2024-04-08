FROM httpd:latest

# Copy your website content into the container
COPY ./index.html /usr/local/apache2/htdocs/
COPY ./style.css /usr/local/apache2/htdocs/
COPY ./script.js /usr/local/apache2/htdocs/

# Expose the port that the web server will listen on
EXPOSE 80

# Start the Apache server
CMD ["httpd-foreground"]
