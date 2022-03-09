FROM ubuntu

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm

COPY /app/api-testing-with-node-master ./opt/app

WORKDIR app/api-testing-with-node-master/

ENTRYPOINT npm start