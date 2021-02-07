FROM node:14-alpine
WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install \
 && yarn cache clean

COPY . ./

RUN mkdir /data \
 && ln -s /data data

EXPOSE 5000
ENTRYPOINT ["yarn"]
CMD ["--silent", "start"]
