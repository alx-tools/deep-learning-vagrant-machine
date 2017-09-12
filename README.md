# Deep Learning	Vagrant	Machine

These Vagrant files automates the installation of a working Deep Learning machine running on Ubuntu 14.04.

What's in the box:
* [Keras](http://keras.io/) - minimalist, highly modular neural networks library.
* [Tensorflow](https://www.tensorflow.org/versions/r0.7/api_docs/index.html) - library for numerical computation using data flow graphs.
* [Jupyter](http://jupyter.readthedocs.org/en/latest/index.html) - web application to create, share documents that contain live code, equations, visualizations and explanatory text.
* [Anaconda](https://docs.anaconda.com/anaconda/) - python package manager and collection of libraries for scientific computing in python.

![Keras](http://imgur.com/nE0of8d.jpg "Keras")
![TensorFlow](http://imgur.com/rwISEz5.jpg "TensorFlow")
![Jupyter](http://i.imgur.com/zpzIAml.jpg "Jupyter")


# Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads.html)

You must install VirtubalBox and Vagrant before continuing.

# Getting started
First and foremost, let's install git and gitbash (essential for windows users). Go to this [link](https://git-scm.com/downloads), download the appropriate installer for your platform, and install git. For Windows users, **be sure to install git-bash** as well.   

Once Vagrant and VirtualBox are installed, clone this repository or import `Vagrantfile` and `bootstrap.sh` in a directory.

<!-- Next, install VirtualBox Additions plugin for Vargrant. Use the following command:
`vagrant plugin install vagrant-vbguest` -->

From this directory, let's start your Vagrant box by typing in your terminal (it might take some time to download the Ubuntu image):

    $ vagrant up
Once the setup is complete, just run:

    $ vagrant ssh
You are in! 

<!-- Open a browser and browse http://127.0.0.1:8888 -->

Looking for some resources to get started with Deep Learning? Check out our [introductory workshops](https://github.com/holbertonschool/deep-learning).

# Tips and tricks

To access files present on your computer from your Vagrant/Ubuntu machine, go to the `/vagrant` directory which is mounted to the directory you started you Vagrant box from:

    $ cd /vagrant/

To get a list of available vagrant commands (from your host computer), just type:

    $ vagrant

If you want to start your virtual machine from scratch, disconnect from it and from your host computer run:

    $ vagrant destroy
    $ vagrant up

# Known Errors and Fixes

### `vagrant up` command exits with an error saying that `forwarded port to 8888` is already in use by the host machine.
## On Mac: 
- Run `sudo lsof -i:8888`. This is to find the process which is using port `8888`.
- Copy the process's `PID`. This is the ProcessID associated to that process.
- Run `kill <Paste ProcessID here>`. This is to terminate the process.
- Run `vagrant up` again.

### When inside the Virtual Machine (after runing `vagrant ssh`) running `Jupyter Notebook` results in a screen saying that `Jupyter Notebook requires Javascript`.

- Press `q` and then `y` to exit that screen.
- Press `ctrl` + `c` to exit Jupyter.
- Type `jupyter notebook --no-browser --ip=0.0.0.0 --port=8888`.
- Jupyter Notebook should pop up in your browser.   


# Other Resources
For PyCharm integration with your Vagrant VM, check out the following pages:
- [Using Vagrant & PyCharm](https://developer.rackspace.com/blog/a-tutorial-on-application-development-using-vagrant-with-the-pycharm-ide/)
- [PyCharm, Vagrant, Anaconda and others](http://colour-science.org/posts/pycharm-vagrant-fabric-anaconda/)