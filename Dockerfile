FROM node:11.8-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
LABEL org.opencontainers.image.source=https://github.com/GuileSuica/observerD
CMD [ "npm", "start" ];
