function track(){
        mkdir -p ~/timetracker
        DATE=$(date '+%Y-%m-%d')
        TIME=$(date '+%Y-%m-%d %H:%M:%S')
        FILEPATH=$(readlink -f ~/timetracker)
        FILE="${FILEPATH}/done.${DATE}.log"
        echo $FILE  
        zenity --entry --text="What are you doing?" | awk -v time="$TIME" '{ logline=time" "$1; print logline }'  >> $FILE
}
 export DISPLAY=0:0
track
#while sleep 900; do
#track
#done

