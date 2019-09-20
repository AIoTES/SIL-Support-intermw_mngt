# InterMW management image

This image contains a set of scripts to help the configuration of interMW

## setting bridge.callback.url

remember to set the callback URL, as IP and port in the environment variable INTERMW_CALLBACK_URL.

```sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -e INTERMW_CALLBACK_URL intermw-mngt /mngt/script/configure.callback.sh```
