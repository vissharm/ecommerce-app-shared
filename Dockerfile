FROM node:14
WORKDIR /shared
COPY package*.json ./
RUN npm install
COPY . .
RUN npm pack && mkdir -p /output && mv shared-1.0.0.tgz /output/