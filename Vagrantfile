# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'chef/debian-7.4'

  # Avoid 'stdin is not a tty' error
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  # Provision
  config.vm.provision :shell, path: 'provisioning/bootstrap.sh'
  config.vm.provision :shell, path: 'provisioning/install-go.sh'
  config.vm.provision :shell, path: 'provisioning/setup-go-workspace.sh',
                              args: ['vagrant',
                                     '/home/vagrant/go']
end
