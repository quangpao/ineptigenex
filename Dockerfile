FROM node:20-slim
WORKDIR /home/node/app
COPY . /home/node/app/

RUN apt-get update
RUN apt-get install -y ffmpeg \
    build-essential \
    libtool-bin

RUN npm install

USER node
ENV NODE_ENV=production

CMD [ "node", "index.js" ]