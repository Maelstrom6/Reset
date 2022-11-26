# First install the nvidia drivers
# This can be done in the "Software & Updates" app under Additional Drivers
# Select a non-open source one
# Alternatively, you can use the command line
ubuntu-drivers devices
# Choose the best one (should be closed source)
sudo apt install nvidia-driver-520
# Need to reboot before continuing
sudo reboot
# Test installation
nvidia-smi  # Should show your graphics card

# toolkit 11.2
# https://developer.nvidia.com/cuda-11.2.2-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=runfilelocal
wget https://developer.download.nvidia.com/compute/cuda/11.2.2/local_installers/cuda_11.2.2_460.32.03_linux.run
sudo sh cuda_11.2.2_460.32.03_linux.run --toolkit --silent --override
# Test installation
nvcc -V  # Should show the version of cuda toolkit

# Add some environment variables
sudo nano ~/.profile
# Add the following
#export PATH=/usr/local/cuda-11.2/bin${PATH:+:${PATH}}
#export LD_LIBRARY_PATH=/usr/local/cuda-11.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
#export CUDA_HOME=/usr/local/cuda

# CuDNN
# Download archive
# https://developer.nvidia.com/rdp/cudnn-archive
tar -zvxf cudnn-11.2-linux-x64-v8.1.0.77.tgz

# Copy the cuda folder to wherever you want it.
mv cuda/ ~/cuda/
cd ~/cuda/include
sudo cp *.h /usr/local/cuda/include/
# replace ~ with your own path
sudo chmod a+r /usr/local/cuda/include/cudnn.h

sudo nano ~/.profile
# Add the following
#export LD_LIBRARY_PATH=~/cuda/lib64:$LD_LIBRARY_PATH

# Need to log out and log back in for the profile to refresh

# Now install tensorflow with pip
# pip install tensorflow

# import tensorflow as tf
# print(tf.config.list_physical_devices('GPU'))

# Install torch
# pip install torch==1.11.0+cu113 torchvision==0.12.0+cu113 torchaudio===0.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html
# pip install git+https://github.com/huggingface/diffusers.git transformers accelerate scipy
# pip install xformers
# pip install ftfy
# Will automatically download the model weights when running the script

# import torch
# print(torch.cuda.get_device_name(0))