ARG BASE_IMAGE=mcr.microsoft.com/devcontainers/base:focal
FROM ${BASE_IMAGE}
LABEL Elmo Chrisitian "elmokulc@univ-smb.fr"

RUN chmod -R 777 /tmp
ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/London"
COPY ./_install_apt_packages.sh /tmp/_install_apt_packages.sh
RUN /bin/bash /tmp/_install_apt_packages.sh

COPY ./_install_softwares.sh /tmp/_install_softwares.sh
RUN /tmp/_install_softwares.sh


ARG CONDA_ENV_NAME=pytouch
ARG CONDA_DIR=/opt/conda

ENV CONDA_DIR=${CONDA_DIR}
ENV CONDA_ENV_NAME=${CONDA_ENV_NAME}
ENV CONDA_ENV_PATH=${CONDA_DIR}/envs/${CONDA_ENV_NAME}
ENV CONDA_ENV_BIN_PATH=${CONDA_ENV_PATH}/bin
ENV CONDA_BIN_PATH /opt/conda/bin/conda
ENV MAMBA_BIN_PATH /opt/conda/bin/mamba
ENV PYTHON_EXECUTABLE ${CONDA_ENV_BIN_PATH}/python

COPY ./_install_miniforge.sh /tmp/_install_miniforge.sh
RUN chmod +x /tmp/_install_miniforge.sh && /tmp/_install_miniforge.sh


RUN ${MAMBA_BIN_PATH} create -y -n ${CONDA_ENV_NAME}
COPY environment.yml /tmp/environment.yml
RUN umask 0000 && ${MAMBA_BIN_PATH} update -n base -c conda-forge conda 
RUN umask 0000 && ${MAMBA_BIN_PATH} env update --file /tmp/environment.yml --name ${CONDA_ENV_NAME}

COPY _install_python_modules.sh /tmp/_install_python_modules.sh
RUN  /tmp/_install_python_modules.sh


 
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> /home/vscode/.bashrc
RUN echo "conda activate $CONDA_ENV_NAME" >> /home/vscode/.bashrc
 
RUN usermod -a -G video vscode
RUN usermod -a -G root vscode 
RUN usermod -a -G dialout vscode

# Copy the devcontainer script
COPY postCreateCommand.sh /tmp/postCreateCommand.sh
COPY postStartCommand.sh /tmp/postStartCommand.sh
