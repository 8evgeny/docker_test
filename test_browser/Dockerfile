
FROM debian:12.11


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y mc 
RUN apt-get install -y chromium


# будем запускать проигрыватель вместе с контейнером
ENTRYPOINT ["chromium"]
