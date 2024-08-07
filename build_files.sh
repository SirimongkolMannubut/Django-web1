pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear
#!/bin/bash

# Ensure Python3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found. Installing Python3..."
    sudo apt-get update
    sudo apt-get install -y python3
fi

# Ensure pip3 is installed
if ! command -v pip3 &> /dev/null
then
    echo "pip3 could not be found. Installing pip3..."
    sudo apt-get install -y python3-pip
fi

# Install dependencies
pip3 install -r requirements.txt

# Run migrations
python3 manage.py migrate

# Collect static files
python3 manage.py collectstatic --noinput