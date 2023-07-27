
.PHONY: test env start stop


env:
	@export MOODLE_DOCKER_SELENIUM_VNC_PORT=5900
	@export MOODLE_DOCKER_WWWROOT=/home/michiel/Projects/moodle
	@export MOODLE_DOCKER_DB=mariadb

start: env
	@cp config.docker-template.php $$MOODLE_DOCKER_WWWROOT/config.php
	bin/moodle-docker-compose up -d
	bin/moodle-docker-wait-for-db

test: env start
	bin/moodle-docker-compose exec webserver php admin/tool/behat/cli/init.php
	bin/moodle-docker-compose exec webserver php admin/tool/phpunit/cli/init.php

stop: env
	bin/moodle-docker-compose down

destroy:
	for container in $$(docker ps --format '{{.Names}}'|grep moodle); do \
	   echo $$container ; \
	   docker stop $$container; \
	   docker rm $$container; \
	done; \
	for volume in $$(docker volume ls | grep moodle | tr -s ' ' | cut -d ' ' -f 2); do \
	   docker volume rm $$volume; \
	done
