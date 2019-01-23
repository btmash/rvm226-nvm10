FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update -q \
    && apt install -qy curl ca-certificates gnupg2 build-essential --no-install-recommends \
    && apt-get clean

RUN apt install -qy software-properties-common
RUN add-apt-repository -y ppa:rael-gc/rvm
RUN apt update -q
RUN apt install -qy rvm

RUN bash -c 'source /usr/share/rvm/scripts/rvm && rvm install 2.2.6'

RUN echo 'source /usr/share/rvm/scripts/rvm' >> ~/.bashrc
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
RUN bash -c 'source $HOME/.nvm/nvm.sh \
    && nvm install 10'
