#!/bin/bash
USER="rocho"
function track(){
        mkdir -p /home/"$USER"/timetracker
        DATE=$(date '+%Y-%m-%d')
        TIME=$(date '+%Y-%m-%d %H:%M:%S')
        FILEPATH=$(/bin/readlink -f /home/"$USER"/timetracker)
        FILE="${FILEPATH}/done.${DATE}.log"
        echo "wirting to $FILE"  
        /usr/bin/zenity --entry --text="What are you doing?" | awk -v time="$TIME" '{ logline=time" "$1; print logline }'  >> $FILE
}
  export DISPLAY=:1
track

