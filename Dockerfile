FROM node:lts-buster

RUN rm -rf /var/lib/apt/lists/*

COPY package.json ..

RUN npm i

COPY . .

EXPOSE 5000

CMD ["npm", "start", "--server"]
