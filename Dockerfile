FROM nginx
EXPOSE 80
COPY landing-page/dist/landing-page/ /usr/share/nginx/html
