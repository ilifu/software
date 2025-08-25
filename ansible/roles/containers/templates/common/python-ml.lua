-- -*- lua -*-
help([[
This module configures the Python ML container for bioinformatics and machine learning.

Includes:
- Python {{ item.python_version }}
- TensorFlow {{ item.tensorflow_version }} with CUDA {{ item.cuda_version }} support
- OpenCV {{ item.opencv_version }} (headless)
- NumPy {{ item.numpy_version }}
- Pandas {{ item.pandas_version }}
- Matplotlib {{ item.matplotlib_version }}
- Seaborn {{ item.seaborn_version }}
- Pillow {{ item.pillow_version }}
- scikit-learn {{ item.sklearn_version }}
- Requests {{ item.requests_version }}
- Jupyter notebook support with ipywidgets
- CUDA-accelerated computing capabilities

Usage:
  python script.py        # Run Python scripts
  pip install package     # Install additional packages
  jupyter                 # Launch Jupyter notebook server
]])

whatis("Keywords: python, machine learning, bioinformatics, tensorflow, cuda")
whatis("Description: Python ML container with TensorFlow, CUDA, and scientific computing packages")
whatis("Version: {{ item.version_number }}")

-- Load required modules
load("singularity")

-- Add container binaries to PATH
prepend_path("PATH", "{{ python_ml_binary_dir }}")

-- Set container-specific environment variables
setenv("PYTHON_ML_VERSION", "{{ item.version_number }}")
setenv("TENSORFLOW_VERSION", "{{ item.tensorflow_version }}")
setenv("CUDA_VERSION", "{{ item.cuda_version }}")
setenv("CUDNN_VERSION", "{{ item.cudnn_version }}")

-- Jupyter kernel path
setenv("PYTHON_ML_KERNEL_DIR", "{{ python_ml_kernel_dir }}")

-- Set CUDA environment variables for the host
setenv("CUDA_VISIBLE_DEVICES", os.getenv("CUDA_VISIBLE_DEVICES") or "")

-- Container image path
setenv("PYTHON_ML_CONTAINER", "{{ container_image }}")

-- Provide information about available tools
if (mode() == "load") then
   io.stderr:write("Python ML container loaded. Available commands: python, python3, pip, pip3, jupyter\n")
   io.stderr:write("Jupyter kernel available at: {{ python_ml_kernel_dir }}/kernel.json\n")
end