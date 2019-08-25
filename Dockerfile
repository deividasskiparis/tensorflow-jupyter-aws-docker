FROM tensorflow/tensorflow:latest-gpu-py3-jupyter



WORKDIR "/opt/docker"

RUN pip3 install \
    matplotlib \
    pillow \
    scipy

RUN mkdir notebooks

COPY scripts/* ./
COPY notebooks/* ./notebooks/

ENTRYPOINT ["/bin/bash", "start.sh"]
