FROM node

# Create app directory
WORKDIR /usr/web

# Install dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json /usr/web/

RUN npm install

COPY . /usr/web

RUN npm run build

COPY . /usr/web

EXPOSE 3000

CMD [ "npm", "run", "start" ]