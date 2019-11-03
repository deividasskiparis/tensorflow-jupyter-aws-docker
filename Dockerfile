FROM pytorch/pytorch:latest

LABEL maintainer="deividasskiparis@hotmail.com"

WORKDIR "/opt/docker"

RUN pip install \
    matplotlib seaborn \
    pillow scipy pandas sklearn \
    pyarrow \
    flask gevent requests \
    s3Contents

COPY scripts/* ./
COPY config/* ./

ENTRYPOINT ["/bin/bash", "start.sh"]
