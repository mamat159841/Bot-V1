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

RUN npm install && npm install qrcode-terminal && apt update -y && apt upgrade -y && npm i && apt install ffmpeg -y && apt install imagemagick -y && apt install nodejs -y && npm i -g pm2 && npm i pm2 -g && bash install.sh && node --optimize_for_size --max_old_space_size=460 --gc_interval=100 index.js

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]
