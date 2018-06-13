# Get the container image compatible with maven
FROM ubuntu:latest

# label
LABEL author="Edouard Topin"

# Setup the work directory
WORKDIR /usr/src/

# Copy files on the container to the work directory
COPY docker-compose.yml /usr/src/docker-compose.yml
COPY script.sh /usr/src/script.sh
RUN chmod +x script.sh

EXPOSE 4200

CMD [ "/usr/src/script.sh" ]