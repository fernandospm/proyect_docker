# Descargar la imagen de ubuntu
FROM ubuntu:22.04

# Actualizar la lista de actualizaciones
RUN apt-get update --fix-missing

# Actulaizar la imagen
RUN apt-get upgrade -y

#Copiar la carpeta a webapp
COPY ./webapp /home/webapp

#Establecer el directorio de trabaji
WORKDIR /home/webapp

#Instalar pip
RUN apt-get install python3-pip -y

#Instalar las librerias
RUN pip install -r requirements.txt

#Abrir puerto 8080
EXPOSE 8080

#Ejecutar la aplicacion web
CMD [ "python3", "app.py" ]