
export MOODLE_DOCKER_WWWROOT=/home/michiel/Projects/moodle
export MOODLE_DOCKER_DB=mysql
export MOODLE_DOCKER_DB_VERSION=8.0
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php
bin/moodle-docker-compose up -d
bin/moodle-docker-wait-for-db

