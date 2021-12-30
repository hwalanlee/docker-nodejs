FROM node:12-alpine

WORKDIR /home/ec2-user/docker-nodejs

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "index.js" ] 

EXPOSE 3000
