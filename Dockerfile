FROM node:8.16.1-alpine
RUN mkdir /app

WORKDIR /app
COPY package.json /app
RUN chmod -R 775 /app

RUN npm install
EXPOSE 5000
COPY . /app
CMD node index.js

#ENTRYPOINT ["node", "index.js"]
#COPY package.json /app
