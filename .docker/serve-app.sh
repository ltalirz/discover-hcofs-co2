#!/bin/bash -e

# This script is executed whenever the docker container is (re)started.

#===============================================================================
# debuging
set -x

#===============================================================================
## start postgres
#source /opt/postgres.sh
#psql_start

#===============================================================================
panel serve figure detail select-figure  \
    --port 5006                 \
    --log-level debug           \
    --allow-websocket-origin "*" \
    --prefix "$BOKEH_PREFIX" \
    --use-xheaders
# --allow-websocket-origin discover.materialscloud.org 
# --allow-websocket-origin localhost:5006

#===============================================================================

#EOF
