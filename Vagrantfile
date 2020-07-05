# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.define :masonm do |masonm_config|
    masonm_config.vm.synced_folder File.dirname(__FILE__) + '/www/', '/var/www'
    masonm_config.vm.network :private_network, ip: "192.168.3.3"
    masonm_config.vm.network "forwarded_port", guest: 8000, host: 8000

    masonm_config.vm.provision "ansible_local" do |ansible|
      ansible.install = true
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
    end
  end
end
