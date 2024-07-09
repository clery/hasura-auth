FROM node:18 AS build

WORKDIR /app

RUN npm i -g pnpm

COPY ./package.json ./pnpm-lock.yaml ./
RUN pnpm i
COPY ./ ./
RUN pnpm build

CMD pnpm start