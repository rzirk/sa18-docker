FROM node:8-alpine

# set wordir to /app
WORKDIR /app
RUN apk update && apk add git
RUN git clone https://github.com/Tomk3n/sa_personen_service.git .
# copy all app related data to /app
#run npm install before copying app for better caching
RUN npm install



CMD node index.js