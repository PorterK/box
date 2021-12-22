FROM node:16.11.1

RUN mkdir -p /home/app/ && chown -R node:node /home/app
WORKDIR /home/app
COPY --chown=node:node . .

USER node

RUN npm ci
RUN npm run build

CMD [ "npm", "start" ]