#!/bin/bash

for i in {1..254}

do
ping -c 1 -w 1 172.16.17.$i

if [ $? -eq 0  ] ; then  # this checks the exit code status after ping 
	echo -e 'server 172.16.17.'$i' is up and running\n'
else  
	echo -e 'server 172.16.17.'$i' is unreachable\n'
fi
done
