FROM node:20.19.2

WORKDIR /app

COPY package*.json ./
RUN npm install -g @nestjs/cli
RUN npm install

COPY . .
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]