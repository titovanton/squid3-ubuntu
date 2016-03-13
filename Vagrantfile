Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.network :forwarded_port, guest: 3128, host: 3128
    # config.vm.synced_folder ".", "/vagrant"
    config.vm.provision :shell, path: "bootstrap.sh"

    config.vm.provider "virtualbox" do |v|
        v.cpus = 4
        v.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
        v.memory = 1024
        v.name = "squid3"
    end
end
