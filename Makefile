all: up

up:
	-docker compose -f ./containers/docker-compose.yaml up -d

down:
	-docker compose -f ./containers/docker-compose.yaml down

clean:
	-docker compose down --rmi all --volumes --remove-orphans -f ./containers/docker-compose.yaml

re: down up