#!/bin/bash
registers=3000
total=100
progress=1

while [ $progress -le $total ]
do
    i=1
    bar="[ "
    rc="\r"
    while [ $i -le $total ]; do
        if [ $i -le $progress ]; then
            bar="${bar}#"
        else
            bar="${bar} "
        fi
        (( i++ ))
    done
    bar="${bar} ]"
    #percentage=$(( $progress * 10))
    if [ $progress -eq $total ]; then
        rc="\n";
    fi
    echo -ne "${bar} (${percentage} %)${rc}"
    (( progress++ ))
    sleep 0.020
done
echo "Process Finish!"

