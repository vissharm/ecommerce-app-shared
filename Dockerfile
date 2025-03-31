FROM node:14
WORKDIR /shared
COPY package*.json ./
RUN npm install
COPY . .
RUN npm pack