#!/bin/bash

set -e

python -m venv backend/venv
export PATH=$(pwd)/backend/venv/bin:$PATH

pip install -r backend/requirements.txt

python backend/api/app.py
