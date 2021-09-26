FROM jupyter/scipy-notebook:lab-3.1.12

RUN mamba install --quiet --yes 'opencv' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
