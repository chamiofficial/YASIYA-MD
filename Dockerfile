FROM node:20-alpine

WORKDIR /app

# git නැති නිසා npm install fail වෙන එක වලක්වන්න
RUN apk add --no-cache git

# package files copy කරලා deps install කරනවා
COPY package*.json ./
# --production වෙනුවට --omit=dev පාවිච්චි කරන්න (warn එකත් යනවා)
RUN npm install --omit=dev && npm install -g pm2

# app files ටික copy කරනවා (yasiya-md.js ඇතුළුව)
COPY . .

ENV PORT=8000
EXPOSE 8000

# pm2-runtime එකෙන් yasiya-md.js start කරනවා
CMD ["pm2-runtime", "yasiya-md.js", "--name", "yasiya-md"]
