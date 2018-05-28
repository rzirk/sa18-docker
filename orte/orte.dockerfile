FROM node:8-alpine

# Create app directory
WORKDIR /app

RUN apk update && apk add git
RUN git clone https://github.com/Tomk3n/orteMock.git .

RUN npm install

CMD node index.js
