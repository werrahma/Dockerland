DOCKER_FILE = ./srcs/docker-compose.yml
DOCKER_VOLUMES = $(shell docker volume ls -q)

./PHONY: up
up:
	docker-compose -f $(DOCKER_FILE) up --build
down:
	docker-compose -f $(DOCKER_FILE) down 
clean: down
	@if [ -n "$(DOCKER_VOLUMES)" ]; then \
		echo "Removing Docker volumes..."; \
		docker volume rm -f $(DOCKER_VOLUMES); \
	else \
		echo "No Docker volumes to remove."; \
	fi
restart:
	docker-compose -f $(DOCKER_FILE) restart