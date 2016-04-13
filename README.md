# Deep Learning	Vagrant	Machine

This vragrant files automates the installation of a working Deep Learning machine running on Ubuntu 14.04.

What's in the box:
* Keras
* Theano
* Tensorflow

# Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

* [Vagrant](https://www.vagrantup.com/downloads.html)

You must install VirtubalBox and Vagrant.

# Getting started

Once Vagrant and Virtual box are installed, clone this repository or import `Vagrantfile` and `bootstrap.sh` in	a directory.

From this directory, let's initiate our Vagrant box by typing in your terminal:
    
    $ vagrant init
And let's start	our Vagrant box:
    
    $ vagrant up
Once the setup is complete, just run:
    
    $ vagrant ssh
You are	      in! Now train your first neuronal network:

    $ python keras/examples/addition_rnn.py


