# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/trusty64'
  config.vm.hostname = 'engs108'

  config.vm.network :forwarded_port, guest: 8888, host: 8888

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 1
  end
  
  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
  config.vm.synced_folder "notebooks/", "/home/vagrant/notebooks"
  config.vm.synced_folder "code/", "/home/vagrant/code"
end
