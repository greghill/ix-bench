#!/bin/bash
#/agents.sh hotbox-11..37 &

##ssh greghill@maverick-13 "sudo pkill -9 memcached; sudo pkill -9 upload_test; ~/public/cleanix/ix/apps/memcached-1.4.18/memcached -m 4096 -c 4096 -t 1 -T 1" &
#ssh greghill@maverick-13 "sudo pkill -9 ix; cd ~/public/cleanix/ix/ix && ./runvf.sh &> /dev/null" &
#sleep 8;
##./mutilate -s 10.79.6.24 --loadonly -T 24 &&
##./mutilate -s 10.79.6.24 `./agents.sh -l hotbox-11..37` --noload -T 24 --binary --scan 10000:320000:10000 -Q 1000 -d 4 -c 4 -t 3 
#./mutilate -s 10.79.6.112:8000 --loadonly -T 24 &&
#./mutilate -s 10.79.6.112:8000 `./agents.sh -l hotbox-11..37` --noload -T 24 --binary --scan 100000:1300000:50000 -Q 1000 -d 4 -c 4 -t 3 
i=2
until [  $i -gt 65 ]; do
echo "running $i download threads"; sleep 3;
#ssh greghill@maverick-13 "sudo pkill -9 upload_test; sudo pkill -9 memcached; ~/public/cleanix/ix/bench/upload_test & ~/public/cleanix/ix/apps/memcached-1.4.18/memcached -m 4096 -c 4096 -t 1 -T 1" &
ssh greghill@maverick-13 "sudo pkill -9 ix; sleep 1; cd ~/public/cleanix/ix/ix && ./runvf.sh &> /dev/null & cd ~/public/cleanix2/ix/ix && ./runvfupload.sh &> /dev/null" &
sleep 8; 
#./mutilate -s 10.79.6.24 --loadonly -T 24 &&
#./mutilate -s 10.79.6.24 `./agents.sh -l hotbox-11..37` --noload -T 24 --binary --scan 10000:320000:10000 -Q 1000 -d 4 -c 4 -t 3 &&
./mutilate -s 10.79.6.112:8000 --loadonly -T 24 &&
./mutilate -s 10.79.6.112:8000 `./agents.sh -l hotbox-11..37` --noload -T 24 --binary --scan 100000:1300000:50000 -Q 1000 -d 4 -c 4 -t 3 &&
ssh greghill@maverick-15 "pkill --signal SIGUSR1 download_client" &
#ssh greghill@maverick-15 "pkill -9 download_client; ~/public/cleanix2/ix/bench/download_client 10.79.6.24 8000 $i 1 1024 1 1 0" 
ssh greghill@maverick-15 "pkill -9 download_client; ~/public/cleanix2/ix/bench/download_client 10.79.6.111 8000 $i 1 1024 1 1 0" 
let i=$i+$i
done
