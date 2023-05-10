FROM node:lts-buster

RUN apt-get install ffmpeg \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json ..

RUN npm i && apt install ffmpeg -y && apt install imagemagick -y

COPY . .

EXPOSE 5000

CMD ["npm", "start", "--server"]
