# See README for build/run instructions.
FROM node:17

WORKDIR /app
COPY . /app
RUN npm install

EXPOSE 8080

CMD ["npm", "run", "start"]
