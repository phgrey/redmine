#!/bin/bash

REDMINE_PATH=/var/www/virtual/redmine-2.2.4
HOST=81.25.226.164
USERNAME=rparser_test@reflect.com.ua
PASSWORD=aw07faneb

cd $REDMINE_PATH
bundle exec rake -f "$REDMINE_PATH/Rakefile" redmine:email:receive_pop3 RAILS_ENV="production" host=$HOST username=$USERNAME password=$PASSWORD tracker=support project=1a allow_override=tracker,status,priority,project,watcher delete_unprocessed=1 unknown_user=accept no_permission_check=1
