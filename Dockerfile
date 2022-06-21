FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

COPY --chown=node:node . ./

USER node

CMD ["npm", "start"]

EXPOSE 3000