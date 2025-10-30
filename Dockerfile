FROM nginx:alpine

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Copy everything from current folder into Nginx public folder
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
