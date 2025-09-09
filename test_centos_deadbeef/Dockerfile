
FROM centos:6.10

ENV DEBIAN_FRONTEND=noninteractive

# RUN sed -i 's/https/http/g' /etc/yum.repos.d/epel.repo

# RUN yum clean all && yum check && yum erase apf && yum update ca-certificates && yum upgrade


RUN yum update
RUN yum install -y mc 
RUN yum install -y wget

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
