#!/bin/bash

source venv/bin/activate

pip install -r requirements.txt

python3.9 manage.py migrate

python3.9 manage.py collectstatic --noinput --clear