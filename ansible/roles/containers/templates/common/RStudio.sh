#!/bin/bash

SERVER_DIR="${HOME}/.RStudio.rserver"

if [ ! -d "${SERVER_DIR}/data" ]; then
    mkdir -p "${SERVER_DIR}/data" || { echo "Could not create ${SERVER_DIR}/data, aborting..."; exit 1; }
fi
if [ ! -d "${SERVER_DIR}/var/lib" ]; then
    mkdir -p "${SERVER_DIR}/var/lib" || { echo "Could not create ${SERVER_DIR}/var/lib, aborting..."; exit 1; }
fi

singularity run --app rstudio --bind /software:/software --bind "${SERVER_DIR}/var/lib":/var/lib/rstudio-server {{ container_image }} "$@"
