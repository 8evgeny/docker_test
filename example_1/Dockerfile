FROM debian:12.11
#FROM ubuntu:20.10
#FROM ubuntu:22.04
#FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update 
RUN apt install -y sudo 
RUN apt install -yq wget mc 
 #RUN apt-get install -y libasound2 libcairo2 libgtk2.0-0 libpango1.0-0 libx11-6

# установка deadbeef
RUN wget -P /tmp 'https://master.dl.sourceforge.net/project/deadbeef/travis/linux/1.8.2/deadbeef-static_1.8.2-1_amd64.deb' 
RUN dpkg -i /tmp/deadbeef-static_1.8.2-1_amd64.deb || true 
RUN apt-get install -fyq --no-install-recommends \
 && ln -s /opt/deadbeef/bin/deadbeef /usr/local/bin/deadbeef 
#&& rm /tmp/deadbeef-static_1.8.2-1_amd64.deb

#RUN apt-get install libgtk-3-dev

#RUN xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.Xauthority nmerge -

# будем запускать проигрыватель вместе с контейнером
ENTRYPOINT ["/opt/deadbeef/bin/deadbeef"]
