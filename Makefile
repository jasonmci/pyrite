build:
	docker-compose build

up:
	docker-compose up -d app

test: up
	docker-compose run --rm --no-deps --entrypoint=pytest app /tests/unit --stats-d --stats-host ec2-35-90-12-71.us-west-2.compute.amazonaws.com --stats-port 8125 --stats-prefix unit
	docker-compose run --rm --no-deps --entrypoint=pytest app /tests/integration --stats-d --stats-host ec2-35-90-12-71.us-west-2.compute.amazonaws.com --stats-port 8125 --stats-prefix integration
	docker-compose run --rm --no-deps --entrypoint=pytest app /tests/e2e --stats-d --stats-host ec2-35-90-12-71.us-west-2.compute.amazonaws.com --stats-port 8125 --stats-prefix e2e

logs:
	docker-compose logs app | tail -100

down:
	docker-compose down --remove-orphans

all: down build up test
