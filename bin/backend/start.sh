#!/bin/bash

set -e

python -m venv backend/venv
export PATH=$(pwd)/backend/venv/bin:$PATH

pip install -r backend/requirements.txt

# export the env file
set -o allexport
source $ENV_PATH
set +o allexport

python backend/api/app.py
