#!/bin/sh
set -eu

: "${PG_DATABASE_URL:?PG_DATABASE_URL is required}"

attempt=1
max_attempts=60

while ! PGCONNECT_TIMEOUT=3 psql "$PG_DATABASE_URL" -tAc 'SELECT 1' >/dev/null 2>&1; do
  if [ "$attempt" -ge "$max_attempts" ]; then
    echo "PostgreSQL did not become ready after ${max_attempts} attempts" >&2
    exit 1
  fi
  echo "Waiting for PostgreSQL before running Twenty migrations (attempt ${attempt}/${max_attempts})"
  attempt=$((attempt + 1))
  sleep 2
done

exec /app/entrypoint.sh "$@"
