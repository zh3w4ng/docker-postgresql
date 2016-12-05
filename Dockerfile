FROM zh3w4ng/alpine-base
MAINTAINER Zhe Wang <zh3w4ng@gmail.com>

ENV PGDATA=/var/lib/postgresql/data
ENV DB_LOG=/var/log/postgresql

RUN apk add --update postgresql postgresql-client
COPY rootfs /
ENTRYPOINT ["/init"]
CMD []
EXPOSE 5432
