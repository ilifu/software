#!/bin/bash

exec singularity run --bind /software:/software {{ container_image }} "$@"
