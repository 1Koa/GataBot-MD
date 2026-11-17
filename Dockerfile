FROM node:20-bookworm

RUN apt-get update && \
    apt-get install -y ffmpeg imagemagick webp && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package.json .
RUN npm install && npm install qrcode-terminal

COPY . .

CMD ["npm", "start"]
