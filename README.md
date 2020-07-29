# InterMW management scripts

This repository contains a set of scripts to help the configuration of Inter-MW and a Dockerfile to create a Docker image to run these scripts. This image is deployed with the SIL stack.


## Use

To use the provided script, the intermw service must be running in Docker. The provided script edits the interm.properties file to set the proper values to the properties. Property bridge.callback.url is set using the provided environment variables $INTERMW_CALLBACK_PROTOCOL, INTERMW_CALLBACK_IP and INTERMW_CALLBACK_PORT.


The provided script can be built into a Docker image, which is used with the SIL stack. To run the Docker image, use:

`sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -e INTERMW_CALLBACK_PROTOCOL=http -e INTERMW_CALLBACK_IP=<IP> -e INTERMW_CALLBACK_PORT=<PORT> docker-activage.satrd.es/intermw-mngt:<version>`


After running the script, the intermw service must be restarted to apply the changes.


## Build docker image

You can build a docker image using:

```
sudo docker build -t intermw-mngt:<version> .
```


## Further information

[Deployment of AIoTES components using Portainer](https://github.com/activage/AIOTES-2.0/wiki/Deployment#aiotes-components-deployment).


**Available Docker image versions** 

Docker images:
+ v0.0.1: $INTERMW_CALLBACK_PROTOCOL://$INTERMW_CALLBACK_IP:$INTERMW_CALLBACK_PORT (AIoTES 1.5, SIL standalone deployment)
+ v0.0.2: $INTERMW_CALLBACK_PROTOCOL://$INTERMW_CALLBACK_ADDRESS
+ v0.0.3: Configures the callback according to the AIOTES API definition (to be used with AIoTES 2.0 deployment): {API_base_URL}/sil/callback. The address is created as $INTERMW_CALLBACK_PROTOCOL://$INTERMW_CALLBACK_IP:$INTERMW_CALLBACK_PORT/sil/callback



## License

Licensed under [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0).
