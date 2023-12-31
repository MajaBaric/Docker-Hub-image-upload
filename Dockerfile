﻿FROM ubuntu as builder
USER root

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update && \
    apt-get -y --no-install-recommends install \
	python3 \
	cmake \
	make \
	software-properties-common \
	build-essential \
	git \
	ca-certificates \
	ninja-build \
	libtbb-dev \
	libpcre3-dev \
	zlib1g-dev \
	g++-11 && \
    apt-get clean

CMD ["echo", "Docherfile"]

COPY . /root/

WORKDIR /root
