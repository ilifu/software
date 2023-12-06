#!/bin/bash

singularity exec {{ container_image }} /software/psrcat/psrcat "$@"
