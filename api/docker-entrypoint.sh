#!/bin/bash
set -e
# Remove a potentially pre-existing api.pid for Rails.
rm -f ./app/tmp/pids/server.pid

# Fix ownership of output files
finish() {
    # Fix ownership of output files
    user_id=$(stat -c '%u:%g' /data)
    chown -R ${user_id} /data
}

trap finish EXIT

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"