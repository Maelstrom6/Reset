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

# toolkit 11.7
# https://developer.nvidia.com/cuda-toolkit-archive
# https://developer.nvidia.com/cuda-11-7-1-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=runfile_local
wget https://developer.download.nvidia.com/compute/cuda/11.7.1/local_installers/cuda_11.7.1_515.65.01_linux.run
sudo sh cuda_11.7.1_515.65.01_linux.run --toolkit --silent --override

# Test installation
nvcc -V  # Should show the version of cuda toolkit

# Add some environment variables
sudo nano ~/.profile
# Add the following
#export PATH=/usr/local/cuda-11.7/bin${PATH:+:${PATH}}
#export LD_LIBRARY_PATH=/usr/local/cuda-11.7/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
#export CUDA_HOME=/usr/local/cuda


# CuDNN
# Download archive
# https://developer.nvidia.com/rdp/cudnn-archive
# Ubuntu installer if possible (22.04)
#tar -zvxf cudnn-11.2-linux-x64-v8.1.0.77.tgz
# sudo dpkg -r <old-cudnn-runtime>.deb
sudo dpkg -i cudnn-local-repo-ubuntu2204-8.6.0.163_1.0-1_amd64.deb

# Copy the cuda folder to wherever you want it.
mv cuda/ ~/cuda/
cd ~/cuda/include
sudo cp *.h /usr/local/cuda/include/
# replace ~ with your own path
sudo chmod a+r /usr/local/cuda/include/cudnn.h

sudo nano ~/.profile
# Add the following
#export LD_LIBRARY_PATH=~/cuda/lib64:$LD_LIBRARY_PATH


# Install torch
# https://download.pytorch.org/whl/torch_stable.html
# pip install torch==1.13.0+cu117 torchvision==0.14.0+cu117 torchaudio===0.13.0+cu117 -f https://download.pytorch.org/whl/torch_stable.html
# pip install git+https://github.com/huggingface/diffusers.git transformers accelerate scipy
# pip install ftfy
# https://github.com/facebookresearch/xformers/issues/473
# takes a really long time
# pip install ninja
# pip install git+https://github.com/facebookresearch/xformers.git@v0.0.13#egg=xformers
# pip install -U --pre triton
# Will automatically download the model weights when running the script

# import torch.bash
# print(torch.bash.cuda.get_device_name(0))

# diffusers/models/attention.py/line 285
# self._use_memory_efficient_attention_xformers = True

