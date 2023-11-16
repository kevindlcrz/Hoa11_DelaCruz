FROM Ubuntu

MAINTAINER kevin <qmkcdelacruz@tip.edu.ph>

# skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt update; apt dist-upgrade -y

# install packages
RUN apt-get install -y apache2 mariadb-server

# set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND

