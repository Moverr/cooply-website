# Use Nginx official image
FROM nginx:alpine

# Copy your HTML file into Nginx's default public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
