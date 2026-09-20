#   https://pavelk.ru/%D1%81%D0%B1%D0%BE%D1%80%D0%BA%D0%B0-qt-6-8-dev-%D0%B8%D0%B7-%D0%B8%D1%81%D1%85%D0%BE%D0%B4%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2-%D0%B2-docker-%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%B5/

# @brief Образ для сборки QtDev
#
# Собрать образ контейнера: sudo docker build --no-cache -t qtdev .
# Запустить контейнер (и сборку содержимого): sudo docker run --rm -t qtdev:latest
# Войти в шелл не запущенного контейнера: sudo docker run -it --entrypoint /bin/bash qtdev
# Войти в шелл запущенного контейнера: sudo docker exec -it qtdev /bin/bash
#
# Get install folder from image to host
# id=$(sudo docker create qtdev:latest)
# sudo docker cp $id:/opt/QtDev/install_LinAmd64 /opt/QtDev/
# sudo docker rm -v $id
#
# @author 2me@pavelk.ru

FROM ubuntu:20.04
LABEL maintainer="2me@pavelk.ru"

ENV DEBIAN_FRONTEND=noninteractive

# RUN
RUN apt-get update && \
#
apt install -y wget build-essential software-properties-common gcc g++ git libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev checkinstall zlib1g-dev && \
# OpenSSL
wget https://github.com/openssl/openssl/releases/download/openssl-3.0.8/openssl-3.0.8.tar.gz && \
tar xvf openssl-3.0.8.tar.gz && cd openssl-3.0*/ && \
./config --libdir=/usr/lib/x86_64-linux-gnu/ && make && make install && \
# CMake
cd ../ && \
wget --no-check-certificate https://github.com/Kitware/CMake/releases/download/v3.21.6/cmake-3.21.6.tar.gz && tar -xvf cmake-3.21.6.tar.gz && \
cd cmake-3.21.6 && \
./bootstrap --prefix=/usr/ --parallel=`nproc` &&  nice -n20 make -j`nproc` && nice -n20 make install  && \
# Qt Dev
mkdir -p /opt/QtDev/ && cd /opt/QtDev/ && \
mkdir -p build_LinAmd64 && mkdir -p install_LinAmd64 && \
git clone https://github.com/qt/qt5 src && cd src && \
git checkout dev && \
#--module-subset=qtbase,qtdeclarative,qtquickcontrols,qtquickcontrols2,qtgraphicaleffects,qtshadertools,qtsvg
perl init-repository && \
cd ../build_LinAmd64 && \
../src/configure -prefix ../install_LinAmd64 -opensource -confirm-license -shared -release -platform linux-g++ -openssl-linked -bundled-xcb-xinput -qt-zlib -qt-freetype -qt-doubleconversion -qt-libpng -qt-libjpeg -qt-pcre -qt-harfbuzz -qt-sqlite -no-icu  -no-libmd4c -nomake examples -nomake tests -skip qt3d,qtcanvas3d,qtquick3d,qtquick3dphysics,qtgraphs && \
# Qt build bugfixes https://bugreports.qt.io/browse/QTBUG-124209
mkdir -p ./qtmultimedia/src/multimedia/.qsb/shaders/ && \
mkdir -p ./qtmultimedia/src/multimedia/.qsb/shaders/externalsampler_linear.frag.qsb@glsl,100es,shaders/ && \
mkdir -p ./qtdeclarative/src/quick/.qsb/scenegraph/shaders_ng/ && \
mkdir -p ./qtdeclarative/src/effects/.qsb/data/shaders/ && \
mkdir -p ./qtdeclarative/src/quickshapes/.qsb/shaders_ng/ && \
mkdir -p ./qtdeclarative/src/particles/.qsb/shaders_ng/ && \
mkdir -p ./qtdeclarative/src/quickcontrols/imagine/impl/.qsb/shaders/ && \
mkdir -p ./qtdeclarative/src/quickcontrols/material/.qsb/shaders/ && \
mkdir -p ./qtdeclarative/src/quickdialogs/quickdialogsquickimpl/.qsb/shaders/ && \
cmake --build . --parallel $((`nproc`+1)) && \
cmake --install .
  
