FROM nvidia/cuda:11.6.0-base-ubuntu20.04

ENV NVIDIA_DRIVER_CAPABILITIES="compute,video,utility"

ENV NANO_URL="https://github.com/nanopool/nanominer/releases/download/v3.6.1/nanominer-linux-3.6.1-cuda11.tar.gz"

EXPOSE 8081

RUN apt-get update && apt-get install -y --no-install-recommends \
    libnvidia-ml-dev \
    wget \
    && rm -fr /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/* \
    && mkdir /nanominer \
    && wget --no-check-certificate $NANO_URL \
    && tar -xvf ./*.tar.gz  -C /nanominer --strip-components=1 \
    && rm *.tar.gz

WORKDIR /nanominer

COPY config.ini /nanominer/config.ini

CMD ["/nanominer/nanominer","/nanominer/config.ini"]

#docker run --privileged -it --name='docker-nanominer' --runtime=nvidia -p '8081:8081' -v ${PWD}/config_satori_merged.ini:/nanominer/config.ini codeschooldropout/docker-nanominer
