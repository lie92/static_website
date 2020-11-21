FROM nginx
EXPOSE 80
COPY dashboard/dist/dashboard/ /usr/share/nginx/html
