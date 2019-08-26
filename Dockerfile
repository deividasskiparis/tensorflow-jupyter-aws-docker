FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

LABEL maintainer="deividasskiparis@hotmail.com"

WORKDIR "/opt/docker"

RUN pip3 install \
    matplotlib \
    pillow \
    scipy \
    s3Contents

COPY scripts/* ./
COPY config/* ./

ENTRYPOINT ["/bin/bash", "start.sh"]
