#!/bin/sh

#set bridge.callback.url
docker exec intermwipsmdeployment_intermw_1 sed -i "s/bridge\.callback\.url\=.*$/bridge\.callback\.url\=$INTERMW_CALLBACK_IP\:$INTERMW_CALLBACK_PORT/g" /etc/inter-iot/intermw/intermw.properties

#TODO reboot interMW
