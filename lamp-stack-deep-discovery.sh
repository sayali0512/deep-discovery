#!/bin/bash

# get the info if the moodle instance is present, second find the moodle folder path and third find the moodledata path
get_running_moodle_instance(){
path=/var/www/html/$service
service=moodle

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
echo "$service is not running!!!"

fi
if (( $(ps -ef | grep -v grep | locate $path | wc -l) > 0 ))
then
echo "$path is present !!!"
else
echo "$path is absent  !!!"
fi

}
get_running_moodle_instance