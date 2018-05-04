FROM alpine:latest

MAINTAINER grimrose <grwin7@gmail.com>

ENV HUGO_VERSION=0.40.2

RUN apk add --update wget ca-certificates && \
  cd /tmp/ && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv ./hugo /usr/bin/hugo && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

RUN mkdir /src

WORKDIR /src

ENTRYPOINT ["/usr/bin/hugo"]

CMD ["help"]
