#!/bin/bash

# check if INPUT_DATA, REFERENCE and OUTPUT_DIR environmental variables are set
if [[ -z "${INPUT_DATA}" ]]; then
  echo "remember to set the INPUT_DATA environmental variable with:"
  echo 'export INPUT_DATA="/PATH/TO/INPUT/DATA"'
  exit 1
fi

if [[ -z "${REFERENCE}" ]]; then
  echo "remember to set the REFERENCE environmental variable with:"
  echo 'export REFERENCE="/PATH/TO/REUSABLE/REFERENCE"'
  exit 1
fi

if [[ -z "${OUTPUT_DIR}" ]]; then
  echo "remember to set the OUTPUT_DIR environmental variable with:"
  echo 'export OUTPUT_DIR="/PATH/TO/INPUT/DATA"'
  exit 1
fi


exec singularity exec --bind /software:/software --bind "${INPUT_DATA}:/msPIPE/data:ro" --bind "${REFERENCE}:/msPIPE/reference" --bind "${OUTPUT_DIR}:/work_dir/" {{ container_image }} msPIPE.py "$@"
