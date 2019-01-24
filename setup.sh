#!/bin/bash 

wget https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh
chmod +x ./Anaconda3-2018.12-Linux-x86_64.sh
./Anaconda3-2018.12-Linux-x86_64.sh -f -b

echo ". ~/anaconda3/etc/profile.d/conda.sh" >> ~/.bashrc
source ~/anaconda3/etc/profile.d/conda.sh
conda activate;  
conda install -c menpo opencv -y;
conda install -c conda-forge imageio -y


