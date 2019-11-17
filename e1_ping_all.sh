#!/bin/bash

for host in `cat e1_ping_all.txt | sort | uniq` ; do
    ping -c 1 $host &> /dev/null
    if [ $? -eq 0 ] ; then available='Y' ; else available='N' ; fi
    echo "$host $available"
done
