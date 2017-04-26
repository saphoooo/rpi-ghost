FROM hypriot/rpi-node:argon
MAINTAINER Saphoooo <stephane.beuret@gmail.com>

#Ghost version
ENV GHOST_VERSION 0.11.8

RUN apt-get update && apt-get install -y unzip
WORKDIR /usr/src

#Download Ghost zipfile
RUN wget https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip
RUN unzip -d ghost Ghost-${GHOST_VERSION}.zip
WORKDIR /usr/src/ghost

RUN npm install --production
COPY config.js config.js

EXPOSE 2368

VOLUME /var/lib/ghost

CMD npm start --production
