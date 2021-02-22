FROM mongo:latest

COPY mongodbtolocal.sh mongo.sh

EXPOSE 27017

ENV DUMP_MONGO_USER @user

ENV DUMP_MONGO_PASSWORD @password

ENV DUMP_MONGO_DATABASE @databaseName