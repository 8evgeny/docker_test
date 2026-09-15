FROM ubuntu:latest

ARG USERNAME=user
ARG UID=1000
ARG GID=1000

RUN apt-get update && \
    apt-get install -y sudo qtcreator cmake
    
RUN apt update -y && apt install \
libgl1 libxkbcommon-dev libegl1 libfontconfig-dev libgssapi-krb5-2 \
libdbus-1-3 libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 \ 
libxcb-render-util0 libxcb-shape0 libxcb-xinerama0 libxcb-cursor-dev \ 
-y && apt clean -y && apt autoremove --purge -y    
    
RUN apt install -y --no-install-recommends sudo 
#RUN groupadd --gid "$GID" "$USERNAME" 
#RUN useradd --uid "$UID" --gid "$GID" --create-home --shell /bin/bash "$USERNAME"
RUN echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > "/etc/sudoers.d/$USERNAME" \
    && chmod 0440 "/etc/sudoers.d/$USERNAME" \
    && visudo -cf "/etc/sudoers.d/$USERNAME" \
    && rm -rf /var/lib/apt/lists/*
    
#RUN apt install locales -y && locale-gen en_US.UTF-8 ru_RU.UTF-8 && update-locale LANG=ru_RU.UTF-8 
#ENV LC_ALL=ru_RU.UTF-8 
#ENV LANG=en_US.UTF-8    
    
USER $USERNAME
ENV HOME=/home/$USERNAME
WORKDIR $HOME    
#VOLUME ["/home/user/QtProg"]  

#CMD ["/bin/bash"] 
    
ENTRYPOINT ["qtcreator"]

  
