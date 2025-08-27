-- -*- lua -*-
help([[
This module configures the Python ML container for bioinformatics and machine learning.

Includes:
- Python {{ item.python_version }}
- TensorFlow {{ item.tensorflow_version }} with CUDA support
- PyTorch {{ item.torch_version }} with CUDA support
- JAX {{ item.jax_version }} high-performance computing
- OpenCV {{ item.opencv_version }} (headless)
- NumPy {{ item.numpy_version }}
- Pandas {{ item.pandas_version }}
- Matplotlib {{ item.matplotlib_version }}
- Seaborn {{ item.seaborn_version }}
- Pillow {{ item.pillow_version }}
- scikit-learn {{ item.sklearn_version }}
- Requests {{ item.requests_version }}
- Transformers {{ item.transformers_version }} (Hugging Face)
- Sentence Transformers {{ item.sentence_transformers_version }}
- LangChain {{ item.langchain_version }} for LLM applications
- SpaCy {{ item.spacy_version }} for production NLP
- Optuna {{ item.optuna_version }} hyperparameter optimization
- Weights & Biases {{ item.wandb_version }} experiment tracking
- Plotly {{ item.plotly_version }} interactive visualization
- Streamlit {{ item.streamlit_version }} web applications
- 50+ additional ML/AI packages for comprehensive development
- Jupyter notebook support with ipywidgets
- CUDA-accelerated computing capabilities
- Shared model cache at /software/data/common

Usage:
  python script.py        # Run Python scripts
  pip install package     # Install additional packages
  bash                    # Launch interactive bash shell
  zsh                     # Launch interactive zsh shell
  
Features:
  - PyTorch for deep learning research
  - JAX/Flax for high-performance computing
  - Complete LLM development stack
  - Advanced computer vision tools
  - MLOps and experiment tracking
  - Interactive visualization and web apps
]])

whatis("Keywords: python, machine learning, bioinformatics, tensorflow, pytorch, jax, transformers, llm, cuda")
whatis("Description: Comprehensive Python ML container with TensorFlow, PyTorch, LLM frameworks, and 50+ AI packages")
whatis("Version: {{ item.version_number }}")

-- Load required modules
load("singularity")

-- Add container binaries to PATH
prepend_path("PATH", "{{ python_ml_binary_dir }}")

-- Set container-specific environment variables
setenv("PYTHON_ML_VERSION", "{{ item.version_number }}")
setenv("TENSORFLOW_VERSION", "{{ item.tensorflow_version }}")
setenv("TORCH_VERSION", "{{ item.torch_version }}")
setenv("TRANSFORMERS_VERSION", "{{ item.transformers_version }}")

-- Jupyter kernel path
setenv("PYTHON_ML_KERNEL_DIR", "{{ python_ml_kernel_dir }}")

-- Set CUDA environment variables for the host
setenv("CUDA_VISIBLE_DEVICES", os.getenv("CUDA_VISIBLE_DEVICES") or "")

-- Shared model cache paths
setenv("HF_HOME", "/software/data/common")
setenv("TRANSFORMERS_CACHE", "/software/data/common")
setenv("SENTENCE_TRANSFORMERS_HOME", "/software/data/common")
setenv("TORCH_HOME", "/software/data/common")

-- Container image path
setenv("PYTHON_ML_CONTAINER", "{{ container_image }}")

-- Provide information about available tools
if (mode() == "load") then
   io.stderr:write("Python ML container loaded. Available commands: python, python3, pip, pip3, bash, zsh\n")
   io.stderr:write("Enhanced v{{ item.version_number }}: PyTorch, JAX, Transformers, LangChain, and 50+ ML/AI packages\n")
   io.stderr:write("Shared models at: /software/data/common\n")
   io.stderr:write("Jupyter kernel available at: {{ python_ml_kernel_dir }}/kernel.json\n")
end