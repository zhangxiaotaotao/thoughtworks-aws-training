FROM node:8

# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service

# Bundle app source
COPY . /home/Service

RUN apt-get update

RUN apt-get install net-tools

RUN apt-get install iputils-ping

RUN apt install curl -y

RUN npm install

EXPOSE 8888
CMD [ "npm", "start" ]