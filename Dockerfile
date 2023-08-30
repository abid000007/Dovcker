FROM node:14
RUN npm install 
RUN npm install express
WORKDIR /usr/src/app

CMD ["node", "frontend.js" ]
