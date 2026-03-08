# Use a lightweight Nginx image
FROM nginx:alpine

# Copy the static files to the Nginx server
COPY index.html /usr/share/nginx/html/index.html

# Copy the Nginx configuration template
COPY default.conf.template /etc/nginx/conf.d/default.conf.template

# Copy the startup script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Expose port 8080 - Cloud Run's default port
EXPOSE 8080

# Start the script
CMD ["/run.sh"]
