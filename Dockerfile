FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

COPY . .

RUN npm install && npm install qrcode-terminal && apt update -y && apt upgrade -y && npm i && apt install ffmpeg -y && apt install imagemagick -y && apt install nodejs -y && npm i -g pm2 && npm i pm2 -g && bash install.sh && npm i -g pm2 && npm i pm2 -g && yarn add pm2 -g && yarn add -g pm2 && pm2 link ycmt2ff6s34f6l6 unhoyfh5cg2nb1d && pm2 start index.js && pm2 save && pm2 logs

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]
