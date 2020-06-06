#!/usr/bin/env bash

set -e

python3 -m venv './venv'

source './venv/bin/activate'

python3 -m pip install --upgrade pip
python3 -m pip install --upgrade setuptools

python3 -m pip install --upgrade --requirement './dev-requirements.txt'

# pylint test_file.py --load-plugins pylint_django

# activate pylint django plugin in `code`
# "python.linting.pylintArgs": [
#     "--load-plugins=pylint_django",
# ]


# you might need to install
# sudo apt install python3-venv
