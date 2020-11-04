FROM node
WORKDIR /usr/app

COPY package.json yarn.lock ./

COPY . .

EXPOSE 4000

RUN yarn global add node-gyp && yarn install

CMD ["yarn","start"]
USER node
