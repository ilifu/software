#!/bin/bash

singularity run --app R --bind /software:/software {{ container_image }} "$@"
