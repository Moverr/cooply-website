FROM nginx:alpine

# Copy everything into Nginx public folder
COPY index.html /usr/share/nginx/html/index.html
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY img /usr/share/nginx/html/img
COPY fonts /usr/share/nginx/html/fonts

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
