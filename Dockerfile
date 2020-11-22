FROM node:12.7-alpine AS build
COPY landing-page/package.json landing-page/package-lock.json ./
RUN npm install
COPY . .
RUN npm run build --prod

### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
EXPOSE 80
COPY --from=build /usr/src/app/dist/landing-page /usr/share/nginx/html


#FROM nginx
#EXPOSE 80
#COPY landing-page/dist/landing-page/ /usr/share/nginx/html
