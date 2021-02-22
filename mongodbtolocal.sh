mongodump --uri="mongodb+srv://$DUMP_MONGO_USER:$DUMP_MONGO_PASSWORD"/ \
--ssl --authenticationDatabase admin \
-d $DUMP_MONGO_DATABASE

mongorestore dump/
