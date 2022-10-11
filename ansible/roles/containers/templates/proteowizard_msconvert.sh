#!/bin/bash

export WINEDEBUG=-all

if [[ -z "${PROTEOWIZARD_DATA}" ]]; then
  echo "PROTEOWIZARD_DATA environmental variable is not set. Please set it to the location of the ProteoWizard data directory. e.g. export PROTEOWIZARD_DATA=${HOME}/proteowizard_data"
  exit 1
fi

TEMP_DIR=$(mktemp -d /dev/shm/${USER}_proteowizard_msconvert.XXX)

singularity exec --writable-tmpfs --cleanenv --env "WINEDEBUG=-all" --bind "${PROTEOWIZARD_DATA}:/data" --bind ${TEMP_DIR}:/mywineprefix {{ container_image }} mywine msconvert "$@"

rm -rf "${TEMP_DIR}"

# singularity exec --writable-tmpfs --cleanenv --env "WINEDEBUG=-all" --bind "${PROTEOWIZARD_DATA}:/data" --bind /dev/shm/meh:/mywineprefix /software/bio/containers/proteowizard_3.0.22167.sif mywine msconvert
