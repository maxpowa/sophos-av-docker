#!/bin/bash
set -e

# Update DB
/opt/sophos-av/bin/savupdate &

cd /opt/sophos-av/bin/
exec "$@"
