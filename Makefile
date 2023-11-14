CONTAINER = node

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

up:
	docker compose up -d

stop:
	docker compose stop

down:
	docker compose down --remove-orphans

logs:
	docker compose logs -f

reset: down build up

exec:
	docker compose exec $(CONTAINER) bash

npm-install:
	docker compose exec $(CONTAINER) npm install