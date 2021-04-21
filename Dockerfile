FROM node:14

# Create app directory

WORKDIR /usr/src/app

# copying all the files from your file system to container file system

COPY package*.json ./

# Install app dependencies

RUN npm install

# If you are building your code for production

# RUN npm ci --only=production

# Bundle app source and copy other files necessary

COPY . .

#expose the port

EXPOSE 8801

# instantiate an image

CMD [ "node", "app.js" ]