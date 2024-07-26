# Inherit from a JupyterHub compatible Docker image
FROM jupyter/base-notebook:2024-07-25

# Add conda packages
COPY environment.yml /tmp/environment.yml
RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml
