FROM node:alpine

ENV PORT 3001

EXPOSE 3001

COPY package.json package.json
RUN yarn install

COPY . .
RUN yarn build

CMD ["node", "dist/"]
