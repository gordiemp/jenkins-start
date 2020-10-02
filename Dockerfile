FROM nginx:alpine
MAINTAINER Maksym Gordienko

RUN apk update && apk upgrade

ADD ./entrypoint.sh /tmp/entrypoint.sh

WORKDIR /tmp

RUN chmod +x /tmp/entrypoint.sh
ENTRYPOINT sh -c "/tmp/entrypoint.sh"
CMD /usr/share/nginx/html/entrypoint.sh && nginx -g 'daemon off;'
