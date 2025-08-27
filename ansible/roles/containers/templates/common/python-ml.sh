#!/bin/bash

# Get the command name that was used to invoke this script
COMMAND_NAME=$(basename "$0")

# Set up temporary directories for user data
TEMP_DIR="/scratch3/users/${USER}/python-ml"
mkdir -p ${TEMP_DIR}

# Bind necessary directories and execute the command
case "${COMMAND_NAME}" in
    "python"|"python3")
        singularity exec \
            --bind /software:/software \
            --bind ${TEMP_DIR}:/tmp/python-ml \
            --bind /data:/data \
            --bind /idia:/idia \
            --bind /cbio:/cbio \
            --bind /ilifu:/ilifu \
            --nv \
            {{ container_image }} \
            /opt/python-ml-env/bin/python "$@"
        ;;
    "pip"|"pip3")
        singularity exec \
            --bind /software:/software \
            --bind ${TEMP_DIR}:/tmp/python-ml \
            --nv \
            {{ container_image }} \
            /opt/python-ml-env/bin/pip "$@"
        ;;
    "bash")
        singularity exec \
            --bind /software:/software \
            --bind ${TEMP_DIR}:/tmp/python-ml \
            --bind /data:/data \
            --bind /idia:/idia \
            --bind /cbio:/cbio \
            --bind /ilifu:/ilifu \
            --nv \
            {{ container_image }} \
            /bin/bash "$@"
        ;;
    "zsh")
        singularity exec \
            --bind /software:/software \
            --bind ${TEMP_DIR}:/tmp/python-ml \
            --bind /data:/data \
            --bind /idia:/idia \
            --bind /cbio:/cbio \
            --bind /ilifu:/ilifu \
            --nv \
            {{ container_image }} \
            /bin/zsh "$@"
        ;;
    *)
        # Default case - run as python from virtual environment
        singularity exec \
            --bind /software:/software \
            --bind ${TEMP_DIR}:/tmp/python-ml \
            --bind /data:/data \
            --bind /idia:/idia \
            --bind /cbio:/cbio \
            --bind /ilifu:/ilifu \
            --nv \
            {{ container_image }} \
            /opt/python-ml-env/bin/python "$@"
        ;;
esac