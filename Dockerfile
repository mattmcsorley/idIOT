FROM nodered/node-red-docker:rpi

USER root
RUN apt-get update && apt-get install -y \
    libpcap-dev

USER node-red
RUN npm install node-red-contrib-huemagic
RUN npm install node-red-contrib-amazondash
RUN npm install node-red-contrib-ui	
