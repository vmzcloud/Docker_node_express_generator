<b>Usage</b>
<pre># docker run -d -p 3000:3000 vmzcloud/node_express_generator:latest</pre>

<b>Components</b>
<p>node</p>
<p>vim</p>

<b>WORKDIR</b>
<p>/express_web_server</b>

<b>npm</b>
<p>express</p>
<p>express-generator</p>
<p>nodemon</p>

<b>Dockerfile</b>

<pre>
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
</pre>
