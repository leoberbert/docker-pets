Vagrant.configure("2") do |config|

  # Machine aplication

  config.vm.define "pets" do |pets|
    pets.vm.box = "centos/7"
    pets.vm.hostname = "pets"
    pets.vm.network "public_network", ip: "192.168.0.111"
    pets.vm.provision "shell", inline: <<-SHELL
    sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
    sudo yum install -y puppet
    sudo puppet apply /vagrant/manifests/app.pp
    SHELL
    pets.vm.provider "virtualbox" do |v|
      v.cpus = 2
      v.memory = 2048
    end
  end
end