FROM node:slim
WORKDIR /app
COPY package*.json ./
RUN npm install -g npm@7.24.1
RUN npm install
COPY . .
EXPOSE 80
CMD ["node","index.js"]
