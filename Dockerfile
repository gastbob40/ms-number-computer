FROM node:10-alpine
RUN mkdir /usr/src/app -p
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 8081
ENTRYPOINT [ "npm", "run", "development" ]