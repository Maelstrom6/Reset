#!/bin/bash

# https://julialang.org/downloads/platform/
#wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.2-linux-x86_64.tar.gz
#tar zxvf julia-1.8.2-linux-x86_64.tar.gz

wget https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.2-linux-x86_64.tar.gz
tar -xvzf julia-1.7.2-linux-x86_64.tar.gz

# https://askubuntu.com/questions/1304249/why-does-my-symlink-to-usr-local-bin-not-work
sudo cp -r julia-1.7.2 /opt/
sudo ln -s /opt/julia-1.7.2/bin/julia /usr/local/bin/julia

# julia
sudo julia update_julia.jl