function track(){
        DATE=$(date '+%Y-%m-%d')
        TIME=$(date '+%Y-%m-%d %H:%M:%S')
        zenity --entry --text="What are you doing?" | awk -v time="$TIME" '{ logline=time" "$1; print logline }'  >> done.${DATE}.txt
}
track
while sleep 900; do
track
done

