FROM node:14.18.3-alpine
WORKDIR /shopping
COPY package.json package-lock.json ./
COPY src ./src
RUN npm install
COPY . .
CMD [ "npm","run","serve" ]