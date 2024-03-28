DOCKER_FILE = ./docker-compose.yml


./PHONY: up
up:
	docker-compose -f $(DOCKER_FILE) up --build
down:
	docker-compose -f $(DOCKER_FILE) down
restart:
	docker-compose -f $(DOCKER_FILE) restart