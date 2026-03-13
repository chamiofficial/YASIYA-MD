FROM node:20-alpine

WORKDIR /app

# git නැති නිසා npm install fail වුණ නිසා git දාගන්න
RUN apk add --no-cache git

# package files copy කරලා deps install කරනවා
COPY package*.json ./
# npm warn එක යන්න --omit=dev පාවිච්චි කරන්න; build tools ඕන නම් libc6-compat/python3/make/build-base එකතු කරන්න
RUN npm install --omit=dev && npm install -g pm2

# app files ටික copy කරනවා
COPY . .

ENV PORT=8000
EXPOSE 8000

# pm2-runtime එකෙන් app එක start කරනවා
CMD ["pm2-runtime", "index.js", "--name", "yasiya-md"]
