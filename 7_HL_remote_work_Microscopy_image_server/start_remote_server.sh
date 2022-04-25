#! /bin/sh

#First check if another instance of this script is already running to prevent clashes

result=`ps aux | grep -i "start_remote_server.sh" | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
   then
        echo "remote server active! Warning: This is a prototype system"

        # kill prior deepzoom
        ps -ef | grep deepzoom | awk '{print $2}' | xargs kill -9
        # kill prior ngrok
        #ps -ef | grep ngrok | awk '{print $2}' | xargs kill -9

        #Start flask locally
        nohup python3 /home/pi/image_server/openslide-python/examples/deepzoom/deepzoom_multiserver.py ~/../../media/pi/LACIE_SHARE/image_server >/dev/null 2>&1 &

        #start ngrok hosting
        nohup /home/pi/image_server/ngrok start --all | cat >/dev/null 2>&1 &
        sleep 10
        #curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p' > url.txt

        curl -s localhost:4040/api/tunnels | jq -r .tunnels[].public_url > url.txt


        ##monitor ngrok and restart if it fails
        nohup /home/pi/image_server/monitor_ngrok.sh >/dev/null 2>&1 &
        nohup /home/pi/image_server/monitor_deepzoom.sh >/dev/null 2>&1 &

        #while true; do
        #  nohup ps --no-headers -C ngrok || ~/image_server/ngrok start --all | cat &
        #  sleep 5m
        #done

   else
        echo "remote server not active! Warning: This is a prototype system"
	# kill prior deepzoom
	ps -ef | grep deepzoom | awk '{print $2}' | xargs kill -9
	# kill prior ngrok
	#ps -ef | grep ngrok | awk '{print $2}' | xargs kill -9

	#Start flask locally
	nohup python3 /home/pi/image_server/openslide-python/examples/deepzoom/deepzoom_multiserver.py ~/../../media/pi/LACIE_SHARE/image_server >/dev/null 2>&1 &

	#start ngrok hosting
	nohup /home/pi/image_server/ngrok start --all | cat >/dev/null 2>&1 &
	sleep 10
	#curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p' > url.txt

	curl -s localhost:4040/api/tunnels | jq -r .tunnels[].public_url > url.txt


	##monitor ngrok and restart if it fails
	nohup /home/pi/image_server/start_monitor_ngrok.sh >/dev/null 2>&1 &
	nohup /home/pi/image_server/monitor_deepzoom.sh >/dev/null 2>&1 &
	
	#while true; do
	#  nohup ps --no-headers -C ngrok || ~/image_server/ngrok start --all | cat &
	#  sleep 5m
	#done
fi

