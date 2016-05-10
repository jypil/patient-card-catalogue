Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.network "forwarded_port", guest: 80, host: 3000 #nginx
  config.vm.network "forwarded_port", guest: 3000, host: 3001 #rails
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]  
  end
  config.vm.provision :puppet,
    :manifests_path => 'puppet/manifests',
    :module_path    => 'puppet/modules',
    :manifest_file  => 'default.pp',
    :options        => '--verbose'
end