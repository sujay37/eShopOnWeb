FROM node:18-alpine

WORKDIR /app

COPY src/Web/package.json ./
COPY src/Web/package-lock.json ./   # if you have it
RUN npm install

COPY src/Web ./

CMD ["npm", "start"]
