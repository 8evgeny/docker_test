#FROM debian:wheezy
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install sudo
RUN apt-get install -yq wget mc

# установка deadbeef
RUN wget -P /tmp 'https://master.dl.sourceforge.net/project/deadbeef/travis/linux/1.8.2/deadbeef-static_1.8.2-1_amd64.deb'
RUN dpkg -i /tmp/deadbeef-static_1.8.2-1_amd64.deb || true 
RUN apt-get install -fyq --no-install-recommends 
RUN ln -s /opt/deadbeef/bin/deadbeef /usr/local/bin/deadbeef 
#RUN rm /tmp/deadbeef-static_1.8.2-1_amd64.deb

# будем запускать проигрыватель вместе с контейнером
ENTRYPOINT ["/opt/deadbeef/bin/deadbeef"]
