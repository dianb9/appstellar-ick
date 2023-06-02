FROM node:18

WORKDIR /usr/appstellar-stellar-web

COPY package*.json /usr/appstellar-stellar-web/

RUN npm install

COPY . /usr/appstellar-stellar-web/

RUN npm run build

COPY . /usr/appstellar-stellar-web/

EXPOSE 3000

CMD [ "npm", "run", "start" ]   