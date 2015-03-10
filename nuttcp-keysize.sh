#!/bin/bash
 valsize=256
 until [  $valsize -gt 4097 ]; do
ssh greghill@maverick-13 "sudo pkill -9 nuttcp; sudo pkill -9 ix; cd ~/public/cleanix/ix/ix && ./runvf.sh &> /dev/null" &
sleep 8;
./mutilate -s 10.79.6.112:8000 --loadonly -T 24 -V $valsize;
echo "running with no target bandwidth and valsize $valsize";
./mutilate -s 10.79.6.112:8000 `./agents.sh -l hotbox-11..37` --noload -T 24 --binary --scan 100000:800000:50000 -Q 1000 -d 4 -c 4 -t 3 -V 2000
for i in {1..9..1}
do
echo "running with $i Gbps target bandwidth and valsize $valsize";
#ssh greghill@maverick-13 "sudo pkill -9 ix; cd ~/public/cleanix/ix/ix && ./runvf.sh &> /dev/null" &
sleep 1; ssh greghill@maverick-13 "nuttcp -R'$i'G -T70 -N 128 -t 10.79.6.26" & PID=$!;
./mutilate -s 10.79.6.112:8000 `./agents.sh -l hotbox-11..37` --noload -T 24 --binary --scan 100000:800000:50000 -Q 1000 -d 4 -c 4 -t 3 -V 2000; wait $PID;
done
let valsize=$valsize+$valsize
done
