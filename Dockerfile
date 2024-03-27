# pulls an image from docker hub
FROM node:18-alpine

# sets work directory in container
WORKDIR /react-app/

# copies public directory to working directory
COPY public/ /react-app/public

# copies src directory to working directory
COPY src/ /react-app/src

# copies package.json to working directory
COPY package.json /react-app/

# install the dependencies in package.json
RUN npm install

# run the react-app
CMD [ "npm", "start" ]