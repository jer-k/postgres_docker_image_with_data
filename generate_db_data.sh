#!/bin/bash

# Run Postgres detached so we can generate the DB files, shut it down, zip up the db files, then move
# onto the second stage of the Dockerfile
echo "Initializing Postgresql"
./usr/local/bin/docker-entrypoint.sh postgres &

# Sleep long enough for the detached Postgres to initialize itself
echo "Sleeping"
sleep 10

echo "Running ANALYZE queries"
su-exec postgres psql -t $POSTGRES_DB --command="SELECT schemaname || '.' || tablename AS fully_qualified_table FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog' AND schemaname != 'information_schema';" | xargs -I {} su-exec postgres psql -t $POSTGRES_DB --command="ANALYZE {};"

echo "Stopping Postgresql"
su-exec postgres pg_ctl stop

echo "Zipping /data"
tar -zcvf postgres-data.tar.gz -C $PGDATA ./
