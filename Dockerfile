FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build
RUN npm install -g serve

COPY . .

EXPOSE 3000
CMD [ "serve", "-s", "dist", "-l", "3000" ]