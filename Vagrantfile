VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config| 
  config.vm.define "web" do |web|
    #box config
    web.vm.box = "precise32"
    web.vm.box_url = "http://files.vagrantup.com/precise32.box"

    #networking
    web.vm.network "forwarded_port", guest: 4000, host: 4000

    #provisioning
    web.vm.provision :shell, :path => "web-bootstrap.sh"
  end 
end