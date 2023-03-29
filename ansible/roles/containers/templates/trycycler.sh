#!/bin/bash

singularity run --bind /software:/software {{ container_image }} trycycler "$@"
