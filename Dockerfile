FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm i && npm i -g pm2 && npm i pm2 -g

COPY . .

EXPOSE 5000

CMD ["pm2-runtime", "index.js", "--server"]
