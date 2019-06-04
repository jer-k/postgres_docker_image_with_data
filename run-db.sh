#!/bin/sh

set -e

if [ ! -f "$PGDATA/PG_VERSION" ]; then
    echo "Restoring $PGDATA ..."
    tar -zxvf postgres-data.tar.gz -C $PGDATA
    sync
    echo "Done."
else
    echo "$PGDATA was already there, skipping restore."
fi

echo "Launching command: $@ ..."
if [ "$1" = 'postgres' ]; then
    su-exec postgres "$@"
else
    exec "$@"
fi
