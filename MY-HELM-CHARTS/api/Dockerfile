FROM node

# Create app directory
WORKDIR /usr/api

# Install dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json /usr/api/

RUN npm install

COPY . /usr/api

RUN npm run build

COPY . /usr/api

EXPOSE 3000

CMD [ "npm", "run", "start" ]