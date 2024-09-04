FROM index.docker.io/nginxinc/nginx-unprivileged:mainline-alpine

USER root
ENV TZ=Europe/Oslo
RUN apk add --no-cache tzdata

COPY ./src/ /usr/share/nginx/html

USER nginx
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
