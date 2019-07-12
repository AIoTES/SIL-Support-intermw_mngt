#!/bin/bash

#set bridge.callback.url
sed -i 's/bridge\.callback\.url\=.*$/bridge\.callback\.url\="$CALLBACK_URL"/g' /etc/inter-iot/intermw/intermw.properties
#TODO reboot interMW