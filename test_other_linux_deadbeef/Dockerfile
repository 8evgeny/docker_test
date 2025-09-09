
#FROM debian/eol:squeeze
#FROM debian/eol:wheezy
FROM debian/eol:lenny

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y mc wget

# установка deadbeef
RUN wget -P /tmp 'http://master.dl.sourceforge.net/project/deadbeef/travis/linux/1.8.2/deadbeef-static_1.8.2-1_amd64.deb' 
RUN dpkg -i /tmp/deadbeef-static_1.8.2-1_amd64.deb || true 
RUN apt-get install -fyq --no-install-recommends \
 && ln -s /opt/deadbeef/bin/deadbeef /usr/local/bin/deadbeef 

# будем запускать проигрыватель вместе с контейнером
ENTRYPOINT ["/opt/deadbeef/bin/deadbeef"]
