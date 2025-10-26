FROM node:20

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
COPY package*.json ./

RUN npm install -g @angular/cli@v6-lts 
RUN npm install

# Bundle app source
COPY . .

# Expose port 4200 outside container
EXPOSE 4200

# Command used to start application
CMD ["node","server/server.js"]
