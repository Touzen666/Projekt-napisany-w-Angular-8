#!/usr/bin/env bash
set -e
# Put quickly a default hostname if not available

if [ -z "$HOSTNAME" ] ; then
  export HOSTNAME=`hostname`
  echo "Grabbing a default hostname of ${HOSTNAME}"
fi

echo "Starting with a hostname of ${HOSTNAME}"

exec nginx -g 'daemon off;' "$@"
