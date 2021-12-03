FROM ubuntu:20.04

ENV TZ=Asia/Shanghai

COPY ./sources.list /etc/apt/sources.list

RUN apt update \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt install -y curl