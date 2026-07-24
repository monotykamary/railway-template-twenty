#!/bin/sh
set -eu
exec redis-server --appendonly yes --maxmemory-policy noeviction --requirepass "$REDIS_PASSWORD"
