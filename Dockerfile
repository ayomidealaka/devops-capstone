FROM nginx:1.21.1

COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80