FROM node:18

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install --only=production

COPY . .

# ENV NODE_ENV=production

EXPOSE 3000

CMD ["npm", "start"]
