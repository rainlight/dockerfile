FROM ubuntu:16.04

RUN rm -rf /var/lib/apt/lists/* && apt-get clean &&\
    apt-get update  && \
    apt-get install -y --no-install-recommends --force-yes \
        wget curl ca-certificates unzip autoconf libtool automake tzdata\
        vim git build-essential cmake pkg-config tree software-properties-common

ENV LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}

RUN echo 'Asia/Shanghai' >/etc/timezone && rm -rf /etc/localtime && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
