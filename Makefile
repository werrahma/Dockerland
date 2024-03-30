DOCKER_FILE = ./docker-compose.yml


./PHONY: up
up:
	docker-compose -f $(DOCKER_FILE) up --build
down:
	docker-compose -f $(DOCKER_FILE) down

clean: down clean-volumes clean-networks

clean-volumes:
	@docker-compose down --volumes --remove-orphans
clean-networks:
	@docker-compose down --remove-orphans
restart:
	docker-compose -f $(DOCKER_FILE) restart