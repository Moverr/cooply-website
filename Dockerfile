# Use official Nginx image
FROM nginx:alpine

# Set working directory to Nginx's web root
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy all your site files into the container
COPY . .

# Expose port 80
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
