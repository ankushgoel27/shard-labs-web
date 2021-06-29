FROM node:14.15.1
WORKDIR /app

COPY . .
RUN npm install
RUN npm run build

CMD ["npm", "run", "serve"]