FROM yunspace/alpine-hugo

MAINTAINER grimrose <grwin7@gmail.com>

RUN mkdir /src

WORKDIR /src

ENTRYPOINT ["/usr/local/bin/hugo"]

CMD ["help"]
