
# Docker Images & Dockerfile

Docker Images are made up of **multiple layers** that are stacked on top of each other and represented as a single object. These are the read-only template that is used to create a Docker container. Because containers are intended to be fast and lightweight, images tend to be small. 

The official Alpine Linux image is about 5MB in size and official Ubuntu image is of 40MB.

These images are very similar to the VM image, but there is some difference between them:

- VM image is used to create VM machine and Docker images are used to create Docker containers.
- VM image is big in size while Docker images are lightweight.

This Dockerfile contains multiple sets of commands, each of them is used to create a layer. Each layer is only a set of differences from the layer before it. The layers are stacked on top of each other.

## Dockerfile
A Dockerfile is a document file that contains collections of commands that will be executed in the docker environment for building a new docker image. This file is written in **YAML Language**. These images consist of read-only layers each of which represents a Dockerfile instruction. It is a more systematic, flexible and efficient way to build a Docker image.
To know more about DockerFile, [click here](https://docs.docker.com/engine/reference/builder/).

Example of a Dockerfile

```bash
# Using the official Ubuntu as base
FROM ubuntu

RUN apt-get update

RUN apt-get install -y nginx

COPY my-site.html /var/www/html

EXPOSE 80

COPY [“./start.sh”, ”/root/start.sh”]

ENTRYPOINT /root/start.sh
```

## Build docker Image
To build an image from the Dockerfile, we use the build command:

```bash
$ docker image build -t username/image_name:tag .
```

