#!/bin/bash

set -e

cd "`dirname "$0"`"

version=$(python -V 2>&1 | grep -Po '(?<=Python )(.+)')
if [[ -z "$version" ]]
then
    echo "Python is required to use this script!" 
fi

version=$(python -m pip --version 2>&1 | grep -Po '(?<=pip )(.+)')
if [[ -z "$version" ]]
then
    echo "Python pip is required to use this script!" 
fi

version=$(python -m virtualenv --version 2>&1 | grep -Po '(?<=virtualenv )(.+)')
if [[ -z "$version" ]]
then
    echo "Python virtualenv is required to use this script!" 
fi

python -m virtualenv env
source $(pwd)/env/bin/activate

python -m pip install --upgrade pip
python -m pip install -r requirements.txt

deactivate



