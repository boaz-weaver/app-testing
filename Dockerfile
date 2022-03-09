FROM ubuntu

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm

COPY /app/api-testing-with-node-master ./opt/app

WORKDIR app/api-testing-with-node-master/

RUN npm install 
RUN npm install -g nodemon

ENTRYPOINT npm start