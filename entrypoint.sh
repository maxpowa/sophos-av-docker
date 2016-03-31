#!/bin/bash
set -e

cd /opt/sophos-av/bin/
./savupdate && exec "$@"
