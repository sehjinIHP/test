FROM node:gallium-slim
  
WORKDIR /ADMIN/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENTRYPOINT ["npm", "run", "start:dev"]