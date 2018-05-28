FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

RUN apk update && apk add git
RUN git clone https://github.com/parth231994/Microservices.git

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

EXPOSE 8080
CMD [ "node", "." ]
