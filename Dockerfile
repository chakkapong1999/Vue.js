FROM node:14.18.3-alpine
COPY package.json package-lock.json ./
WORKDIR /shopping
COPY src ./src
RUN npm install
CMD [ "npm","run","serve" ]