DOCKER_FILE = ./docker-compose.yml


./PHONY: up
up:
	docker-compose -f $(DOCKER_FILE) up --build
down:
	docker-compose -f $(DOCKER_FILE) down
clean:
	@docker volume prune --force @docker network prune --force
restart:
	docker-compose -f $(DOCKER_FILE) restart