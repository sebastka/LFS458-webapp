FROM index.docker.io/nginxinc/nginx-unprivileged:mainline-alpine

USER root
ENV TZ=Europe/Oslo
RUN apk add --no-cache tzdata

COPY ./src/ /usr/share/nginx/html

USER nginx
CMD ["nginx", "-g", "daemon off;"]
