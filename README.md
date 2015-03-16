# docker-mongo
```sh
docker run "galkinrost/mongo",
            args: "-p 27017:27017 \
            -v /data/db:/data/db \
            -e MONGO_DB=db_name \
            -e MONGO_USER=db_user \
            -e MONGO_PASSWORD=db_password"
```