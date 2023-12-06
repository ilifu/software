#!/bin/bash

exec singularity exec --bind /software:/software {{ container_image }} /opt/psrcat/psrcat "$@"
