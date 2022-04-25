
##monitor ngrok and restart if it fails
#Check if an instance is already running
result=`ps aux | grep -i "monitor_ngrok_nocheck.sh" | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
   then
        echo "script is running"
   else
        echo "script is not running"
	nohup /home/pi/image_server/monitor_ngrok_nocheck.sh >/dev/null 2>&1 &
fi
