FROM node:14.18.3-alpine
COPY package.json package-lock.json ./
WORKDIR /shopping
RUN npm install
COPY . .
CMD [ "npm","run","serve" ]