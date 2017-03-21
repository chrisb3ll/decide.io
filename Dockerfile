FROM alpine:3.5
LABEL maintainer "chris@b3ll.co.uk"

# install packages
RUN apk add --update --no-cache \
    bash \
    build-base \
    linux-headers \
    pcre-dev \
    py-pip \
    python \
    python-dev

# pip
RUN pip install --upgrade pip
RUN pip install \
    flask \
    uwsgi

# deploy app
WORKDIR /app
COPY app .
COPY uwsgi.ini .

# run
EXPOSE 9090
CMD ["/usr/bin/uwsgi", "--ini", "uwsgi.ini"]
