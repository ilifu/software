#!/bin/bash

singularity run --app Rscript --bind /software:/software {{ container_image }} "$@"
