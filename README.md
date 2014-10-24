vagrant-debian-wheezy-golang-jessie
===================================

Vagrantfile with simple shell provisioners to build a Debian Wheezy machine with
golang installed from Jessie (testing).

The golang package provided by Wheezy is quite out of date (1.0.2 at the time of
writing). This small project configures a Wheezy machine so that it can install
Jessie packages. It then installs the golang package from Jessie, version 1.3.2
at the time of writing.

It will also set up a go workspace at /home/vagrant/go. This location can be
easily changed by modifying the Vagrantfile.
