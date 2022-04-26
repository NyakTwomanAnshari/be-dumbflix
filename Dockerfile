FROM node:dubnium-alpine3.11
WORKDIR /usr/app
COPY . .
ENV DATABASE_URL postgres://oman:oman1122@116.193.191.236/dumbflix
ENV NODE_ENV production

RUN npm install
RUN npm install serve
RUN npm install pg --save
RUN npm install -g sequelize-cli
RUN npm build

EXPOSE 5000
CMD ["node", "server.js"]
