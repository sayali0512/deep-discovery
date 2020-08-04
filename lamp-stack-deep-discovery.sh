#!/bin/bash

# get the info if the moodle instance is present, second find the moodle folder path and third find the moodledata path
get_running_moodle_instance(){
service=moodle

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
echo "$service is not running!!!"

fi
}
# same process need to find the wordpress
get_running_wordpress_instance(){


}

get_running_moodle_instance
#get_running_wordpress_instance