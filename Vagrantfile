# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'chef/debian-7.4'

  # Uncomment the following to enable folder syncing of a subdirectory
  # containing golang code.

  # config.vm.synced_folder 'project-subdirectory/',
  #   '/home/vagrant/go/src/githost/username/project-name/project-subdirectory',
  #   create: true

  # Avoid 'stdin is not a tty' error
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  # Provision
  config.vm.provision :shell, path: 'provisioning/bootstrap.sh'
  config.vm.provision :shell, path: 'provisioning/install-go.sh'
  config.vm.provision :shell, path: 'provisioning/setup-go-workspace.sh',
                              args: ['vagrant',
                                     '/home/vagrant/go']

                                     # Add something like:
                                     # 'githost/username/project-name' to args
                                     # if working with go code in a
                                     # subdirectory.
end
