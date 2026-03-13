FROM node:20-alpine

WORKDIR /app

# package files copy karala deps install karanawa
COPY package*.json ./
RUN npm install --production && npm install -g pm2

# app files tika copy karanawa
COPY . .

ENV PORT=8000
EXPOSE 6000

# Container walata correct method eka
CMD ["pm2-runtime", "index.js", "--name", "yasiya-md"]
