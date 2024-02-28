# Use a imagem base do Maven com Amazon Corretto 17
FROM maven:3.9.5-amazoncorretto-17

# Atualiza a lista de pacotes
RUN apt-get update

# Instala o LibreOffice
RUN apt-get install -y libreoffice=24.2.0

# Define o diretório de trabalho
WORKDIR /app