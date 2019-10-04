# InterMW management image

This image contains a set of scripts to help the configuration of interMW

## setting bridge.callback.url

remember to set the callback URL, as IP and port in the environment variables $INTERMW_CALLBACK_PROTOCOL, INTERMW_CALLBACK_IP and INTERMW_CALLBACK_PORT.


```sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -e INTERMW_CALLBACK_IP=<IP> -e INTERMW_CALLBACK_PORT=<PORT> intermw-mngt /mngt/script/configure.callback.sh```



Docker images:
+ v0.0.1: $INTERMW_CALLBACK_PROTOCOL://$INTERMW_CALLBACK_IP:$INTERMW_CALLBACK_PORT
+ v0.0.2: $INTERMW_CALLBACK_PROTOCOL://$INTERMW_CALLBACK_ADDRESS
+ v0.0.3: Configures the callback according to the AIOTES API definition: {API_base_URL}/sil/callback. The address is created as $INTERMW_CALLBACK_PROTOCOL://$INTERMW_CALLBACK_IP:$INTERMW_CALLBACK_PORT/sil/callback
