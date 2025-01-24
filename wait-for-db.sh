#!/bin/sh
# wait-for-db.sh

set -e

host="$1"
shift
cmd="$@"

echo "Waiting for PostgreSQL at $host:5432 to be available..."

until PGPASSWORD=offerland_django123 psql -h "$host" -p 5432 -U handyman_user -d handyman_db -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $cmd