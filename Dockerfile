FROM alpine
RUN apk update \
 && apk add lighttpd \
 && rm -rf /var/cache/apk/*
COPY gh-pages /var/www/localhost/htdocs
EXPOSE 80
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
