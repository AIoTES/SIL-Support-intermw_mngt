# InterMW management scripts

This repository contains a set of scripts to help the configuration of Inter-MW and a Dockerfile to create a Docker image to run these scripts. This image is deployed with the SIL stack.


## Use

To use the provided script, the intermw service must be running in Docker. The provided script edits the interm.properties file to set the proper values to the properties. Property bridge.callback.url is set using the provided environment variables $INTERMW_CALLBACK_PROTOCOL, INTERMW_CALLBACK_IP and INTERMW_CALLBACK_PORT.


The provided script can be built into a Docker image, which is used with the SIL stack. To run the Docker image, use:

`sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -e INTERMW_CALLBACK_PROTOCOL=http -e INTERMW_CALLBACK_IP=<IP> -e INTERMW_CALLBACK_PORT=<PORT> aiotesdocker/sil-support-intermw_mngt:<version>`


After running the script, the intermw service must be restarted to apply the changes.


## Build docker image

You can build a docker image using:

```
sudo docker build -t sil-support-intermw_mngt:<version> .
```


## Further information

[Deployment of AIoTES components using Portainer](https://github.com/activage/AIOTES-2.0/wiki/Deployment#aiotes-components-deployment).


[Available Docker images](https://hub.docker.com/r/aiotesdocker/sil-support-intermw_mngt)



## License

Licensed under [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0).
