FROM node:14-alpine
WORKDIR /usr/src/app

COPY package.json pnpm-lock.yaml ./

RUN pnpm install \
 && pnpm store prune

COPY . ./

RUN mkdir /data \
 && ln -s /data data

EXPOSE 5000
ENTRYPOINT ["pnpm"]
CMD ["--silent", "start"]
