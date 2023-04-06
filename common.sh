#!/bin/bash
USER=$(whoami)
WORKDIR=/home/"$USER"/timetracker
function track(){
        mkdir -p $WORKDIR
        DATE=$(date '+%Y-%m-%d')
        TIME=$(date '+%Y-%m-%d %H:%M:%S')
        FILEPATH=$(/bin/readlink -f /home/"$USER"/timetracker)
        FILE="${FILEPATH}/done.${DATE}.log"
        # echo "wirting to $FILE"  
        /usr/bin/zenity --title="TimeTracker" --width=400 --height=300 --timeout=30  --entry --text="What are you doing?" | awk -v time="$TIME" '{ logline=time" "$0; print logline }'  >> $FILE
}

function screenshot(){
   DATE=$(date '+%Y-%m-%d')
   TIME=$(date '+%Y-%m-%d %H:%M:%S')
   IMAGEDIR="$WORKDIR/$DATE"
   mkdir -p $IMAGEDIR
   cd $IMAGEDIR
   scrot  '%Y%m%d%H%M.png' 
}

function record(){
    TIME=$(date '+%Y%m%d%H%M')
    arecord -D hw:2,0  -f S16_LE  --quiet -d 5 "${TIME}.wav"
}

# # usally it should be ":0" , but for me somehow it is :0
#   export DISPLAY=:1


# screenshot
# track

