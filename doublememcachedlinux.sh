#!/bin/bash
ssh greghill@maverick-13 "sudo pkill -9 memcached; ~/public/cleanix/ix/apps/memcached-1.4.18/memcached -m 4096 -c 4096 -t 1 -T 1 & ~/public/cleanix2/ix/apps/memcached-1.4.18/memcached -m 4096 -c 4096 -p 8000 -t 1 -T 2" &
sleep 8; 
./mutilate -s 10.79.6.24 --loadonly -T 24 &&
./mutilate -s 10.79.6.24:8000 --loadonly -T 24 &&
ssh maverick-21 'sudo pkill -9 mutilate; cd public/memcached_auto_benchmarker && ./mutilate -s 10.79.6.24:8000 `./agents.sh -l hotbox-12..24` --noload -T 24 --binary --scan 100000:340000:10000 -Q 1000 -d 4 -c 4 -t 3 &> mar09comutilatelinux1' & PID=$!;
./mutilate -s 10.79.6.24 `./agents.sh -l hotbox-25..37` --noload -T 24 --binary --scan 100000:340000:10000 -Q 1000 -d 4 -c 4 -t 3 | tee mar09comutilatelinux2; wait $PID;
