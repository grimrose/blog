help:
	cat Makefile

build:
	docker-compose build

pull:
	docker-compose pull

down:
	docker-compose down -v

up:
	docker-compose up

TITLE:="title"
YM=`date +%Y/%m`

post:
	docker-compose run --rm hugo new posts/${YM}/${TITLE}.md
