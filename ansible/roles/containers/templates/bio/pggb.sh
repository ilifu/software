#!/bin/bash

exec singularity exec --bind /software:/software {{ container_image }} {{ pggb_binary.name }} "$@"
