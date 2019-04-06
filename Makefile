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
