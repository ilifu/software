#!/bin/bash
# Nextflow wrapper for ilifu: runs this version's nextflow with the shared
# cluster configuration (SLURM profiles for the Main, HighMem and GPU queues,
# Singularity enabled). Pass -profile <name>; see nextflow.config alongside.
exec {{ install_dir }}/nextflow -c {{ install_dir }}/nextflow.config "$@"
