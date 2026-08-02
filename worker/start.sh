#!/bin/sh
set -eu

: "${SERVER_URL:?SERVER_URL is required}"

health_url="${SERVER_URL%/}/healthz"
attempt=1
max_attempts=120

while ! node -e 'fetch(process.argv[1]).then((response) => process.exit(response.ok ? 0 : 1)).catch(() => process.exit(1))' "$health_url"; do
  if [ "$attempt" -ge "$max_attempts" ]; then
    echo "Twenty server did not become ready at ${health_url}" >&2
    exit 1
  fi
  echo "Waiting for Twenty server migrations (attempt ${attempt}/${max_attempts})"
  attempt=$((attempt + 1))
  sleep 5
done

exec "$@"
