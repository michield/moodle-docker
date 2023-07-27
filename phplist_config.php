<?php

$database_host = getenv('DB_HOST');
$database_name = getenv('DB_NAME');
$database_user = getenv('DB_USER');
$database_password = getenv('DB_PASSWORD');

$database_host = getenv('DB_HOST');
$database_name = getenv('DB_NAME');
$database_user = getenv('DB_USER');
$database_password = getenv('DB_PASSWORD');

$mailhost = getenv('MAILHOST');
define('PHPMAILERHOST', $mailhost);
define('PHPMAILERPORT', 1025);
define('TEST', 0);
define('HASH_ALGO', 'sha256');
define('UPLOADIMAGES_DIR','images');
define ("MANUALLY_PROCESS_BOUNCES",0);
define ("MANUALLY_PROCESS_QUEUE",0);
define('CHECK_REFERRER',false);
#define('VERBOSE', 1);
#define('PHPMAILER_SMTP_DEBUG', 1);
define('PHPMAILER_SECURE',0);
define('DEVVERSION',true);
#define('VERBOSE',true);
define('MAILQUEUE_BATCH_SIZE', 10000);
define('MAILQUEUE_BATCH_PERIOD', 1);
define('PROCESSCAMPAIGNS_PARALLEL',true);
define('ADMIN_WWWROOT','http://localhost:8000/newsletter/admin');
define('USER_WWWROOT','http://localhost:8000/newsletter');

define('EMBEDEXTERNALIMAGES',true);
$pageroot = '/lists';

$usertable_prefix = 'phplist_';
$developer_email = 'phplist@test-mailhost.phplist.com';
