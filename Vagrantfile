# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = "scotchbox"
    config.vm.synced_folder "../source", "/var/www/source", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.synced_folder "../build", "/var/www/build", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.synced_folder "./sites-available", "/etc/apache2/sites-available", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.provision :shell, path: "bootstrap.sh"

    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

end
