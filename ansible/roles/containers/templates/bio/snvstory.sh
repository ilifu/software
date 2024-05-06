#!/bin/bash

TEMP_DIR="/scratch3/users/${USER}/snvstory/dev/data"

mkdir -p ${TEMP_DIR}

singularity run --bind /software:/software {{ container_image }} --bind ${TEMP_DIR}/data --bind ~/.aws:/root/aws "$@"
