From node:6-alpine

RUN mkdir /app
WORKDIR /app

COPY package.json /app/
RUN npm install

EXPOSE 3000

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean