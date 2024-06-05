FROM nginx:alpine

# Copy the SSL certificates
COPY certs/nginx-selfsigned.crt /etc/nginx/certs/nginx-selfsigned.crt
COPY certs/nginx-selfsigned.key /etc/nginx/certs/nginx-selfsigned.key

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf