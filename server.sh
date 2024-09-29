#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y libgl1-mesa-glx libglib2.0-0
sudo apt install nvidia-cuda-toolkit


# Install unzip and unzip file
sudo apt-get install unzip -y
## Extract the FlightData.zip file
unzip FlightData.zip -d ./

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


cd ./FlightData
# Install the packages from requirements.txt
pip install -r requirements.txt
pip install tensorflow==2.15.0
pip install kaggle


# Print success message
echo "Setup complete. Environment 'FlightData' is ready with the required packages."
echo "Run 'conda activate FlightData' to activate the environment."


mkdir -p ~/.kaggle
mv /FlightData/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json


# Check if kaggle.json exists
if [ ! -f ~/.kaggle/kaggle.json ]; then
    echo "kaggle.json not found in ~/.kaggle/. Please place your kaggle.json in this directory."
    exit 1
fi

# Dataset URL to download
DATASET_URL="dilwong/flightprices"

# Download the dataset
kaggle datasets download -d $DATASET_URL

# Unzip the dataset
unzip itineraries.csv.zip -d flightprices

# Print success message
echo "Dataset downloaded and unzipped successfully."
