
export MOODLE_DOCKER_WWWROOT=/home/michiel/Projects/moodle
export MOODLE_DOCKER_DB=mysql
export MOODLE_DOCKER_DB_VERSION=8.0
make destroy
docker system prune -f
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php
bin/moodle-docker-compose up -d
bin/moodle-docker-wait-for-db

docker exec -i moodle-docker-webserver-1 php admin/cli/install_database.php \
	--adminemail=michiel@phplist.com  \
        --agree-license \
        --fullname=phpList \
        --shortname=phpList \
        --summary=phpList \
        --adminuser=admin \
        --adminpass=phplist
 
#cat phplist-moodle.sql  | docker exec -i moodle-docker-db-1 mysql -p moodlepass moodle
