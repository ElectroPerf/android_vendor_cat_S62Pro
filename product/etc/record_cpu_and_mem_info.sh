# ${1}: output path, for example: "/sdcard/Log_77717/"
# ${2}: timestamp

i=0
while
do
    DATE=`date '+%Y-%m-%d %H:%M:%S'`

    # dump other logs per 180s
    i=$(($i+1))
    case $i in
        1)  echo "===================start=================== $DATE" >> ${1}/${2}/meminfo.txt;
            echo "===================start=================== $DATE" >> ${1}/${2}/slabinfo.txt;
            echo "===================start=================== $DATE" >> ${1}/${2}/procrank.txt;
            cat /proc/meminfo >> ${1}/${2}/meminfo.txt;
            cat /proc/slabinfo >> ${1}/${2}/slabinfo.txt;
            # Cannot fix sepolicy issue, remove it
            #procrank >> ${1}/${2}/procrank.txt;;
        6)  # reset i to 0
            i=0;;
    esac

    # dump top log per 30s
    echo "===================start=================== $DATE" >> ${1}/${2}/top.txt
    top -b -n 1 | head -n 45 >> ${1}/${2}/top.txt

    sleep 30
done
