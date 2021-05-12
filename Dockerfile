FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app

ARG PORT
ARG ODB_USER
ARG ODB_HOST
ARG ODB_NAME
ARG ODB_PASSWORD
ARG SECRET_ACCESS_KEY

ENV PORT=$PORT
ENV ODB_USER=$ODB_USER
ENV ODB_HOST=$ODB_HOST
ENV ODB_NAME=$ODB_NAME
ENV ODB_PASSWORD=$ODB_PASSWORD
ENV SECRET_ACCESS_KEY=$SECRET_ACCESS_KEY

EXPOSE $PORT

CMD ["npm", "start"]


