#!/bin/bash

#set bridge.callback.url
sed -i 's/bridge\.callback\.url\=.*$/bridge\.callback\.url\="$INTERMW_CALLBACK_IP"\:"$INTERMW_CALLBACK_PORT"/g' /etc/inter-iot/intermw/intermw.properties
#TODO reboot interMW