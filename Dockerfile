# Get the container image compatible with maven
FROM tmaier/docker-compose:latest

# label
LABEL author="Edouard Topin"

# Setup the work directory
WORKDIR /usr/src/

# Copy files on the container to the work directory
COPY docker-compose.yml /usr/src/docker-compose.yml

EXPOSE 4200

CMD ["docker-compose", "-f", "docker-compose.yml","up","-d", "--build"]