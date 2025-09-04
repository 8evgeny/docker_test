#FROM debian:wheezy
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get -y install sudo \
 && apt-get install -yq wget mc

# установка deadbeef
RUN wget -P /tmp 'https://master.dl.sourceforge.net/project/deadbeef/travis/linux/1.8.2/deadbeef-static_1.8.2-1_amd64.deb' \
 && dpkg -i /tmp/deadbeef-static_1.8.2-1_amd64.deb || true \
 && apt-get install -fyq --no-install-recommends \
 && ln -s /opt/deadbeef/bin/deadbeef /usr/local/bin/deadbeef \
 && rm /tmp/deadbeef-static_1.8.2-1_amd64.deb

RUN xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.Xauthority nmerge -

# будем запускать проигрыватель вместе с контейнером
ENTRYPOINT ["/opt/deadbeef/bin/deadbeef"]
