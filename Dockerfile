FROM ubuntu:16.04

LABEL maintainer="Thom Shaw"
LABEL org.label-schema.maintainer="Thom Shaw"

ENV PATH="/opt/itksnap/bin/:${PATH}"
ENV LD_LIBRARY_PATH=/opt/itksnap/lib/:${LD_LIBRARY_PATH}

RUN apt-get update -y \
&& apt-get install -y \
wget \
libglu1 \
libcurl4-openssl-dev \
libsm6 \
libxt6 \
libfreetype6 \
libxrender1 \
libfontconfig1 \
libglib2.0-0 \
libqt4-dev \
libgtk2.0-dev \
\
&& wget -O itksnap.tar.gz 'https://sourceforge.net/projects/itk-snap/files/itk-snap/Nightly/itksnap-nightly-master-Linux-gcc64-qt4.tar.gz/download' \
\
&& tar -zxf itksnap.tar.gz -C /opt/ \
&& mv /opt/itksnap-*/ /opt/itksnap/ \
&& rm itksnap.tar.gz

