#!/bin/bash

# get the info if the moodle instance is present, second find the moodle folder path and third find the moodledata path
get running moodle instance(){
service=moodle

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
echo "$service is not running!!!"

fi
}
# same process need to find the wordpress
get running wordpress instance(){


}

get running moodle instance
#get running wordpress instance