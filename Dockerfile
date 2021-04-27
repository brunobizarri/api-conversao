FROM node:current-buster
WORKDIR /app
COPY package*.json ./
RUN npm install -g npm@7.11.1
RUN npm install
COPY . .
EXPOSE 8081
CMD ["node","index.js"]
