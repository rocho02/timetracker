#!/bin/bash
USER=$(whoami)
function track(){
        mkdir -p /home/"$USER"/timetracker
        DATE=$(date '+%Y-%m-%d')
        TIME=$(date '+%Y-%m-%d %H:%M:%S')
        FILEPATH=$(/bin/readlink -f /home/"$USER"/timetracker)
        FILE="${FILEPATH}/done.${DATE}.log"
        # echo "wirting to $FILE"  
        /usr/bin/zenity --title="TimeTracker" --width=400 --height=300 --timeout=30  --entry --text="What are you doing?" | awk -v time="$TIME" '{ logline=time" "$1; print logline }'  >> $FILE
}
# usally it should be ":0" , but for me somehow it is :0
  export DISPLAY=:1
track

