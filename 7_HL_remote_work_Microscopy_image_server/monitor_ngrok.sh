  GNU nano 3.2                                                  start_remote_server.sh                                                   Modified  

#! /bin/sh
##monitor ngrok and restart if it fails
#Check if an instance is already running
result=`ps aux | grep -i "monitor_ngrok.sh" | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
   then
        echo "script is running"
   else
        echo "script is not running"
	while true; do
 	ps --no-headers -C ngrok || /home/pi/image_server/start_remote_server.sh &
  	sleep 1s
	done
fi
