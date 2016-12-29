# docker-rt-n56u-prometheus

Containerized version of [Prometheus](http://prometheus.freize.net/), an interactive script for customizing, compiling, and updating [padavan/rt-n56u](https://bitbucket.org/padavan/rt-n56u). You can use Prometheus to build and flash padavan/rt-n56u to any router given the proper config.

## Usage

This will pull an image with padavan/rt-n56u, a built MIPSel toolchain, and Prometheus:

    $ docker run -it rwanyoike/rt-n56u-prometheus

## Manual build

First, build the [docker-rt-n56u](https://github.com/rwanyoike/docker-rt-n56u) Docker image.

Clone and enter the repo:

    $ git clone https://github.com/rwanyoike/docker-rt-n56u-prometheus
    $ cd docker-rt-n56u

Edit the `Dockerfile` file to use our local `rt-n56u:latest` image:

    $ sed -i'' 's/rwanyoike\/rt-n56u/rt-n56u:latest/' Dockerfile

Execute `docker build`:

    $ docker build -t rt-n56u-prometheus:latest .

The build will download Prometheus and set it up:

    $ docker images

    REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
    rt-n56u-prometheus  latest              bfbd1ecc2aec        38 minutes ago      3.785 GB
    rt-n56u             latest              12be11919d36        14 hours ago        3.703 GB
    debian              jessie              ddf73f48a05d        2 weeks ago         123 MB
