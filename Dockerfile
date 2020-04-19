From node:6-alpine

USER root
RUN mkdir /app
WORKDIR /app

COPY . .

EXPOSE 3000