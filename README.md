# InterMW management image

This image conains a set of scripts to help the configuration of interMW

## setting bridge.callback.url

remember to set the callback URL, as IP and port in the environment variable INTERMW_CALLBACK_IP and INTERMW_CALLBACK_PORT.

```sudo docker run -v intermw_config:/etc/inter-iot/intermw -e INTERMW_CALLBACK_IP=<IP> -e INTERMW_CALLBACK_PORT=<PORT> /mngt/script/configure.callback.sh ```