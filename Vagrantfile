# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    #ansible.verbose = "vvv"
  end
  config.vm.provider :libvirt do |libvirt|
    libvirt.memory = 3072
  end
  config.vm.synced_folder "/mnt/c/projet2022/restic-s3-yunohost", "/restic-s3-yunohost"
end
