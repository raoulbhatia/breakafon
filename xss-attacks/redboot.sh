#!/bin/sh

# break.bin to send ^C via netcat
# echo -e "\0377\0364\0377\0375\0006" >break.bin

while :; do
	ping -t1 -c1 192.168.1.254 && \
		sleep 1 && \
		nc -v 192.168.1.254 9000 <break.bin && \
		nc -v 192.168.1.254 9000 && \
		break;
	sleep 1;
done
