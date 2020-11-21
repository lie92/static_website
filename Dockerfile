FROM nginx
EXPOSE 80
COPY dashboard/dist /usr/share/nginx/html/
