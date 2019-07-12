# InterMW management image

This image conains a set of scripts to help the configuration of interMW

## setting bridge.callback.url

remember to set the callback URL, as IP and port in the environment variable CALLBACK_URL.

```sudo docker run -v intermw_config:/etc/inter-iot/intermw -e CALLBACK_URL=<IP:PORT> /mngt/script/configure.callback.sh ```