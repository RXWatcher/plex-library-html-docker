#!/bin/ash


echo "Sleeps for 15s to initialize"
sleep 15s

if [ ! -f /data/index.html ] ; then cp /app/index.html /data/ ; cp -R /app/assets /data/ ; chmod 0755 -R /data/ ; fi

