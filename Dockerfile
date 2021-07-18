FROM node:latest

RUN apt-get -y update && apt-get -y install vim
RUN apt-get clean

RUN npm install express -g
RUN npm install express-generator -g
RUN npm install nodemon -g

RUN express -e express_web_server

RUN cd express_web_server && npm install

WORKDIR /express_web_server

EXPOSE 3000
CMD [ "nodemon", "./bin/www" ]
