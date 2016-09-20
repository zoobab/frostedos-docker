FROM ubuntu:14.04
MAINTAINER Benjamin Henrion <zoobab@gmail.com>

ENV user frosted

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q --force-yes build-essential git-core wget

RUN useradd -d /home/$user -m -s /bin/bash $user
RUN echo "$user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$user
RUN chmod 0440 /etc/sudoers.d/$user

USER $user

WORKDIR /home/$user
# todo: need to form the URL with some variables here
ENV tbz2 arm-frosted-eabi-5.3.0_16.07.003.tar.bz2
RUN wget -O $tbz2 https://github.com/insane-adding-machines/crosstool-ng/releases/download/v16.07.003/$tbz2
RUN tar -xf $tbz2
RUN git clone https://github.com/insane-adding-machines/frosted
RUN cd frosted && git submodule init && git submodule update
RUN export PATH=$PATH:/home/$user/arm-frosted-eabi/bin

WORKDIR /home/$user/frosted
# make menuconfig not easy to script
#RUN ARCH=stm32 make defconfig
