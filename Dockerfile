FROM nginx:1.10.1-alpine
COPY index.html /usr/share/nginx/html
COPY script.js /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
