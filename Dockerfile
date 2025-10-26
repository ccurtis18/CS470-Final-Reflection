# Angular 20 dev container on Node 24
FROM node:24

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci

COPY . .
EXPOSE 4200

# Use the same proxy file inside the container, but target the host’s API:
# (proxy.conf.docker.json is created below)
CMD ["npx","ng","serve","--host","0.0.0.0","--port","4200","--proxy-config","proxy.conf.docker.json"]
