function track(){
        DATE=$(date '+%Y-%m-%d')

        eval $(date +Y=%Y\;m=%m\;d=%d\;H=%H\;M=%M)
        if   [[ "$M" < "15" ]] ; then M=00
        elif [[ "$M" < "30" ]] ; then M=15
        elif [[ "$M" < "45" ]] ; then M=30
        else M=45
        fi

        #TIME=$(echo $Y$m$d$H$M)
        TIME=$(date '+%Y-%m-%d %H:%M:%S')
        zenity --entry --text="What are you doing?" | awk -v time="$TIME" '{ logline=time" "$1; print logline }'  >> done.${DATE}.txt
}
track
while sleep 900; do
track
done

