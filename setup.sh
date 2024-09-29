#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y libgl1-mesa-glx libglib2.0-0
sudo apt install nvidia-cuda-toolkit

# Download and install Anaconda
ANACONDA_INSTALLER=Anaconda3-2023.03-Linux-x86_64.sh
wget https://repo.anaconda.com/archive/$ANACONDA_INSTALLER
bash $ANACONDA_INSTALLER -b -p $HOME/anaconda3
#
## Initialize conda
eval "$($HOME/anaconda3/bin/conda shell.bash hook)"

echo "Creating the 'FlightData' environment with Python 3.11"
conda create -n FlightData python=3.11 -y

# Activate the environment
echo "Activating the 'FlightData' environment"
conda activate FlightData

# Install the packages from requirements.txt
pip install -r requirements.txt

# Print success message
echo "Setup complete. Environment 'FlightData' is ready with the required packages."
echo "Run 'conda activate FlightData' to activate the environment."