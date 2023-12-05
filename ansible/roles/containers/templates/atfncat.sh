#!/bin/bash

exec singularity exec {{ container_image }} /software/psrcat/psrcat "$@"
