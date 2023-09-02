FROM ubuntu:20.04

RUN apt update \
    && apt install -yq pike8.0-core

WORKDIR /workspace

COPY bin .

CMD ["pike", "main.pike"]