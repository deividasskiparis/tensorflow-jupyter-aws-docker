FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

LABEL maintainer="deividasskiparis@hotmail.com"

WORKDIR "/opt/docker"

RUN pip3 install \
    matplotlib seaborn \
    pillow scipy pandas sklearn \
    pyarrow \
    flask gevent requests \
    s3Contents

COPY scripts/* ./
COPY config/* ./

ENTRYPOINT ["/bin/bash", "start.sh"]
