#!/bin/bash
set -e

# will stop after mongo shell script execution
gosu mongodb mongod &
sleep 3

# create db and admin user
mongo $MONGO_DB --eval "try{ \
        db.createUser({user:'$MONGO_USER', pwd:'$MONGO_PASSWORD',roles:['dbAdmin']}); \
    }catch(e){ \
        print(e); \
    }"

gosu mongodb mongod --shutdown

touch /.mongodb_password_set

