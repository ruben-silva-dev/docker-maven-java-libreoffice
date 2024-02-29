# Use a imagem base do Maven com Amazon Corretto 17
FROM maven:3.9.5-amazoncorretto-17

# Atualiza a lista de pacotes e instala o LibreOffice
RUN yum update -y && \
    yum install wget tar -y && \
    wget https://downloadarchive.documentfoundation.org/libreoffice/old/24.2.0.3/rpm/x86_64/LibreOffice_24.2.0.3_Linux_x86-64_rpm.tar.gz && \
    tar -xvf LibreOffice_*.tar.gz && \
    cd LibreOffice_* && \
    yum localinstall RPMS/*.rpm -y && \
    rm -rf /LibreOffice_*

RUN PATH="$PATH:/opt/libreoffice24.2/program"

# Define o diretório de trabalho
WORKDIR /app