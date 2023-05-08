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
ENV PM2_PUBLIC_KEY unhoyfh5cg2nb1d
ENV PM2_SECRET_KEY ycmt2ff6s34f6l6

COPY . .

EXPOSE 5000

CMD ["pm2-runtime", "index.js", "--server"]
