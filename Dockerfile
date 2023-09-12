FROM node:lts-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY http-server-upload.js /app/
EXPOSE 8080
CMD [ "node", "/app/http-server-upload.js" ]