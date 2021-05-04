# basics-of-basics
Just another repo with some examples


## Running

We suggest two options to deploy the environment to reproduce all the notebooks/scripts.

### Using a Docker image

This option is especially useful if you have GPU ready environment where there are no restrictions of space (Consider some datasets could take a large amount of space colab won't allow). To build the image, use the following instruction:

```shell
docker image build -t basics:v0 .
```


Then, run the container, indicating the GPUs to use, and optionally some options like the host folder to share with your container or the ports to map with the host system. With:

```shell
docker run -it --rm --gpus all --name basics -v [HOST_PATH]:[CONTAINER_PATH] -p [HOST_JUPYTER_PORT]:8888 basics:v0
```
