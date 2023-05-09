FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json ..

RUN npm install && npm install && npm install && npm install && npm install && apt update -y && apt upgrade -y && npm i && apt install ffmpeg -y && apt install imagemagick -y && apt install nodejs -y && npm i -g pm2 && npm i pm2 -g && bash install.sh && npm i

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
