#!/bin/bash

set -eo pipefail

if [ "$1" == '--' ]; then
    shift 1
    exec "$@"
fi

exec /usr/bin/curator "$@"
