#!/bin/sh

#set bridge.callback.url
docker exec $(docker ps -q -f name=intermw) sed -i "s/bridge\.callback\.url\=.*$/bridge\.callback\.url\=$INTERMW_CALLBACK_PROTOCOL\:\/\/$INTERMW_CALLBACK_IP\/sil\/callback/g" /etc/inter-iot/intermw/intermw.properties

# Configure other necessary intermw properties
docker exec $(docker ps -q -f name=intermw) sed -i "s/kafka\.bootstrap\.servers\=.*$/kafka\.bootstrap\.servers\=kafka\:9092/g" /etc/inter-iot/intermw/intermw.properties

docker exec $(docker ps -q -f name=intermw) sed -i "s/kafka\.zookeeper\.connect\=.*$/kafka\.zookeeper\.connect\=zookeeper\:2181/g" /etc/inter-iot/intermw/intermw.properties

docker exec $(docker ps -q -f name=intermw) sed -i "s/ipsm\.api\.baseUrl\=.*$/ipsm\.api\.baseUrl\=http\:\/\/ipsm\:8080/g" /etc/inter-iot/intermw/intermw.properties

#TODO reboot interMW
