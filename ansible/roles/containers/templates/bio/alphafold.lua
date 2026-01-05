-- -*- lua -*-
help([[
AlphaFold {{ version_number }} - AI-powered protein structure prediction

This module provides access to AlphaFold for predicting protein 3D structures
from amino acid sequences using deep learning.

Requirements:
  - NVIDIA GPU with CUDA 11.2+ support
  - Genetic databases (~2.6 TB) at /software/data/bio/alphafold

Container source: catgumag/alphafold:{{ version_number }} (community-maintained)

Database Setup:
  If databases are not yet downloaded, run:
    ansible-playbook containers.yml --tags alphafold_data

  WARNING: Database download is ~2.6 TB and may take several hours.
  Recommended: Use fast storage (SSD) for database location.

Usage Examples:
  # Basic prediction
  alphafold \
    --fasta_paths=protein.fasta \
    --max_template_date=2023-01-01 \
    --model_preset=monomer \
    --output_dir=./output

  # Interactive shell for debugging
  alphafold_shell

For detailed documentation:
  https://github.com/deepmind/alphafold
]])

whatis("Version: {{ version_number }}")
whatis("Keywords: AlphaFold, protein structure, deep learning, CUDA, GPU")
whatis("Description: AlphaFold {{ version_number }} - AI-powered protein structure prediction")
whatis("URL: https://github.com/deepmind/alphafold")

load("singularity")

local singularity_image = "{{ container_image }}"
local data_dir = "{{ alphafold_data_dir }}"
local version = "{{ version_number }}"
local binary_dir = "{{ alphafold_binary_dir }}"

-- Set environment variables
setenv("ALPHAFOLD_DATA_DIR", data_dir)
setenv("TF_FORCE_UNIFIED_MEMORY", "1")
setenv("XLA_PYTHON_CLIENT_MEM_FRACTION", "4.0")

-- Add wrapper script to PATH
prepend_path("PATH", binary_dir)

-- Primary command: simplified alphafold
local alphafold_bash = 'singularity exec --nv ' ..
                       '--bind /software:/software ' ..
                       '--bind ' .. data_dir .. ':' .. data_dir .. ' ' ..
                       singularity_image .. ' ' ..
                       'python /app/alphafold/run_alphafold.py ' ..
                       '--data_dir=' .. data_dir .. ' "$@"'
local alphafold_csh = 'singularity exec --nv ' ..
                      '--bind /software:/software ' ..
                      '--bind ' .. data_dir .. ':' .. data_dir .. ' ' ..
                      singularity_image .. ' ' ..
                      'python /app/alphafold/run_alphafold.py ' ..
                      '--data_dir=' .. data_dir .. ' $*'
set_shell_function("alphafold", alphafold_bash, alphafold_csh)

-- Interactive shell access
local shell_bash = 'singularity shell --nv ' ..
                   '--bind /software:/software ' ..
                   '--bind ' .. data_dir .. ':' .. data_dir .. ' ' ..
                   singularity_image
set_shell_function("alphafold_shell", shell_bash, shell_bash)

-- Warn if databases missing
if not isDir(data_dir .. "/params") then
    LmodMessage("WARNING: AlphaFold databases not found at " .. data_dir)
    LmodMessage("Run: ansible-playbook containers.yml --tags alphafold_data")
end