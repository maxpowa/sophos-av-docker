#!/bin/bash
set -e

cd /opt/sophos-av/bin/

# If the command starts with -, assume we want to run savscan
if [ "${1:0:1}" = '-' ]; then
    set -- savscan "$@"
fi

if [ "$1" = 'savscan' ]; then
    ./savupdate -v5
fi

if [[ "$*" == "-remove" ]]; then
    echo "-remove specified, piping yes to stdin"
    exit yes | $("$@")
fi

exec "$@"
