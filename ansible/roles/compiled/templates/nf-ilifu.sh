#!/bin/bash
# Nextflow wrapper script for ILIFU
# Automatically loads the shared cluster configuration

exec {{ install_dir }}/nextflow -c {{ install_dir }}/config "$@"