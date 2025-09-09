FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update 
RUN apt install -y sudo 
RUN apt install -yq wget mc 

# установка qtcreator

RUN apt install -y qtcreator

#RUN xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.Xauthority nmerge -

# будем запускать проигрыватель вместе с контейнером
ENTRYPOINT ["qtcreator"]
