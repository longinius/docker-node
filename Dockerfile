FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm

ENV NODEJS_VERSION=10.16.3 \
    PATH=$PATH:/opt/node/bin

WORKDIR "/opt/node"

RUN apt-get update && apt-get install -y curl git ca-certificates apt-utils --no-install-recommends && \
    curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1 && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean