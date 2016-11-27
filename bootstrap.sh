#!/bin/bash
##################################
# Deep Learning Vagrant Machine  #
#     by Holberton School        #
##################################
function install {
    echo installing "$1"
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

function pip_install {
    echo installing "$1"
    shift
    pip install "$@" >/dev/null 2>&1
}

echo "updating package information"
apt-get -y update >/dev/null 2>&1

# Theano
install 'pip' python-pip
install 'theano dependencies' python-numpy python-scipy python-dev python-pip python-nose g++ git libatlas3gf-base libatlas-dev
pip_install 'theano' theano

# Keras
pip_install 'keras' keras
mkdir /home/vagrant/keras
git clone https://github.com/fchollet/keras /home/vagrant/keras/ >/dev/null 2>&1

# Tensorflow
pip_install 'tensorflow' --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0-cp27-none-linux_x86_64.whl

# Miscellaneous
pip_install 'required Python libraries' pyyaml cython
install 'hdf5' libhdf5-7 libhdf5-dev
pip_install 'h5py' h5py
pip_install 'ipython' ipython
pip_install 'jupyter' jupyter
install 'matplotlib' matplotlib

echo 'All set!'
