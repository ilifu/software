#!/bin/bash
exec singularity exec --bind /software:/software {{ container_image }} spectronaut "$@"
