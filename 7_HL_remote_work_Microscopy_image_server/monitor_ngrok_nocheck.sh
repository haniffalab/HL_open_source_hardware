  GNU nano 3.2                                                  start_remote_server.sh                                                   Modified  

#! /bin/sh
##monitor ngrok and restart if it fails
#Check if an instance is already running
        echo "script is not running"
	while true; do
 	ps --no-headers -C ngrok || /home/pi/image_server/start_remote_server.sh &
  	sleep 10s
	done
