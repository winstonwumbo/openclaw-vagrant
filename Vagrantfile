Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"

  # Forward Openclaw Gateway
  config.ssh.extra_args = ["-L", "18789:127.0.0.1:18789"]
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provider "libvirt" do |libvirt|
    libvirt.memory = "4096"
    libvirt.cpus = 2
  end

  # SSHFS Mount for file sharing
  config.vm.synced_folder "./", "/vagrant", type: "sshfs", mount_options: ["allow_other"]

  # Bootstrap script provisioning
  config.vm.provision "shell", privileged: false, path: "vagrant-bootstrap.sh"

  config.vm.hostname = "openclaw-vm"
end