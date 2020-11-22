FROM node:12.7-alpine AS build
WORKDIR /landing-page
COPY landing-page/package.json landing-page/package-lock.json ./
RUN npm install
COPY landing-page/. .
RUN npm run build

### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=build /landing-page/dist/landing-page/ /usr/share/nginx/html


#FROM nginx
#EXPOSE 80
#COPY landing-page/dist/landing-page/ /usr/share/nginx/html
