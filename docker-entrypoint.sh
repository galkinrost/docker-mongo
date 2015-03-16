#!/bin/bash
set -e

if [ "$1" = 'mongod' ]; then
	chown -R mongodb /data/db

    if [ ! -f /.mongodb_password_set ]; then
    	/set_mongodb_password.sh
    fi

    # now run seriously
	exec gosu mongodb "$@"
else
	exec "$@"
fi