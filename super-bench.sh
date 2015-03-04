#!/bin/bash
#./agents.sh hotbox-11..37 &
#ssh greghill@maverick-13 "sudo pkill -9 ix; cd ~/public/cleanix/ix/ix && ./runvf.sh &> /dev/null" &
#./mutilate -s 10.79.6.112:8000 `./agents.sh -l hotbox-11..37` -T 24 --noload --binary --scan 100000:1200000:50000 -Q 1000 -d 4 -c 4 -t 3 -V 2000;
for i in {9..9..1}
do
echo "running with $i Gbps target bandwidth";
#ssh greghill@maverick-13 "sudo pkill -9 ix; cd ~/public/cleanix/ix/ix && ./runvf.sh &> /dev/null" &
ssh greghill@maverick-13 "nuttcp -R'$i'G -T100 -t 10.79.6.26" & PID=$!;
sleep 1; ./mutilate -s 10.79.6.112:8000 `./agents.sh -l hotbox-11..37` -T 24 --noload --binary --scan 100000:1100000:50000 -Q 1000 -d 4 -c 4 -t 3 -V 2000; wait $PID;
done
