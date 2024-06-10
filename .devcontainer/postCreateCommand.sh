# path_source="/workspaces/pytouch/.devcontainer/.env"

# # Check if the file exists
# if [ -f "$path_source" ]; then
#     echo "$path_source found."
#     source $path_source
#     echo "Gitlab credentials"
#     echo "TOKEN: $GITLAB_TOKEN "
#     echo "USER: $GITLAB_ID "
#     /tmp/_install_python_modules.sh
#     exit 0
# else 
#     echo "$path_source not found."
#     echo "Creating a .env file in the .devcontainer folder with the following content:"
#     touch $path_source
#     echo "File created"
#     echo "export GITLAB_TOKEN={your_token}" >> $path_source
#     echo "export GITLAB_ID={your_id}" >> $path_source
#     echo "Please fill the {your_token} and {your_id} fields in $path_source"
#     exit 1
# fi

# Installing private dependancies from Gitlab using provided GITLAB_TOKEN
# $CONDA_ENV_BIN_PATH"/pip" install --upgrade pip
# $CONDA_ENV_BIN_PATH"/pip" install --upgrade setuptools
# $CONDA_ENV_BIN_PATH"/pip" install --upgrade wheel

# # Pycopo
# $CONDA_ENV_BIN_PATH"/pip" install git+https://${GITLAB_ID}:${GITLAB_TOKEN}@gitlab.com/symmehub/pycopo.git@master
# # Pycama
# $CONDA_ENV_BIN_PATH"/pip" install git+https://${GITLAB_ID}:${GITLAB_TOKEN}@gitlab.com/symmehub/pycama.git@network
# # image_datasets
# $CONDA_ENV_BIN_PATH"/pip" install git+https://${GITLAB_ID}:${GITLAB_TOKEN}@gitlab.com/symmehub/humerus_clausus/image_datasets_hcl.git@master

# # Carmen
# echo "Current DISPLAY value = ${DISPLAY}"
# $CONDA_ENV_BIN_PATH"/pip" install git+https://${GITLAB_ID}:${GITLAB_TOKEN}@gitlab.com/symmehub/humerus_clausus/carmen.git@main#subdirectory=./Client

# # Igus
# $CONDA_ENV_BIN_PATH"/pip" install git+https://${GITLAB_ID}:${GITLAB_TOKEN}@gitlab.com/symmehub/humerus_clausus/igus.git@main