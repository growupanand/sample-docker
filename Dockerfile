FROM node:20

WORKDIR /app


# we will first copy npm package files and install them
# this will allow us to cache the npm install step
COPY ./backend/package* .

RUN npm install

COPY ./backend/* .

EXPOSE 3000

CMD ["node", "index.js"]