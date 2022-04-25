#! /bin/sh
##monitor ngrok and restart if it fails
while true; do
 nohup  ps --no-headers -C deepzoom || nohup python3 /home/pi/image_server/openslide-python/examples/deepzoom/deepzoom_multiserver.py ~/../../media/pi/LACIE_SHARE/image_server &
  sleep 5m
done
