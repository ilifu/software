#!/bin/bash

# Set up temporary directories for user data
TEMP_DIR="/scratch3/users/${USER}/python-ml"
JUPYTER_DIR="${HOME}/.jupyter"

mkdir -p ${TEMP_DIR}
mkdir -p ${JUPYTER_DIR}

# Set default port if not specified
if [ -z "${JUPYTER_PORT}" ]; then
    export JUPYTER_PORT=8888
fi

# Check if port is available, if not, find a free one
while netstat -tln | grep -q ":${JUPYTER_PORT} "; do
    JUPYTER_PORT=$((JUPYTER_PORT + 1))
done

HOST=$(hostname)

echo "Starting Jupyter Notebook on ${HOST}:${JUPYTER_PORT}"
echo ""
echo "To connect to this server, run this command on your local machine:"
echo "    ssh -A ${USER}@${HOST} -o \"ProxyCommand=ssh ${USER}@slurm.ilifu.ac.za nc ${HOST} 22\" -L8888:localhost:${JUPYTER_PORT}"
echo ""
echo "Then visit http://localhost:8888 in your browser"
echo "(You may need to choose a different local port if 8888 is in use)"
echo ""

# Run Jupyter in the container with all necessary binds
singularity exec \
    --bind /software:/software \
    --bind ${TEMP_DIR}:/tmp/python-ml \
    --bind ${JUPYTER_DIR}:/root/.jupyter \
    --bind /data:/data \
    --bind /idia:/idia \
    --bind /cbio:/cbio \
    --bind /ilifu:/ilifu \
    --bind ${HOME}:${HOME} \
    --nv \
    {{ container_image }} \
    /opt/python-ml-env/bin/jupyter notebook \
        --ip=0.0.0.0 \
        --port=${JUPYTER_PORT} \
        --no-browser \
        --allow-root \
        --notebook-dir=${HOME} \
        "$@"