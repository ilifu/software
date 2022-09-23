#!/bin/bash

singularity run --app RStudio --bind /software:/software {{ container_image }} "$@"
