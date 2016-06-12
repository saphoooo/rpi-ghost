FROM hypriot/rpi-node:argon
MAINTAINER Saphoooo <stephane.beuret@gmail.com>
RUN apt-get update && apt-get install -y unzip
WORKDIR /usr/src
RUN wget https://ghost.org/zip/ghost-latest.zip
RUN unzip -d ghost ghost-latest.zip
WORKDIR /usr/src/ghost
RUN npm install --production
COPY config.js config.js
EXPOSE 2368
VOLUME /var/lib/ghost
CMD npm start --production
