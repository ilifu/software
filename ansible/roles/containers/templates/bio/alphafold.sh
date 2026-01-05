#!/bin/bash
#
# AlphaFold {{ version_number }} wrapper script
#
# Simplified wrapper for common AlphaFold prediction tasks.
# For advanced usage, use the 'alphafold' shell function after loading the module.

set -euo pipefail

CONTAINER_IMAGE="{{ container_image }}"
DATA_DIR="{{ alphafold_data_dir }}"

# Check if databases exist
if [ ! -d "${DATA_DIR}/params" ]; then
    echo "ERROR: AlphaFold databases not found at ${DATA_DIR}" >&2
    echo "Please download databases first:" >&2
    echo "  ansible-playbook containers.yml --tags alphafold_data" >&2
    exit 1
fi

# Check for NVIDIA GPU
if ! command -v nvidia-smi &> /dev/null; then
    echo "WARNING: nvidia-smi not found. GPU may not be available." >&2
fi

# Run AlphaFold with GPU support and proper bind mounts
exec singularity exec \
    --nv \
    --bind /software:/software \
    --bind "${DATA_DIR}:${DATA_DIR}" \
    "${CONTAINER_IMAGE}" \
    python /app/alphafold/run_alphafold.py \
    --data_dir="${DATA_DIR}" \
    "$@"