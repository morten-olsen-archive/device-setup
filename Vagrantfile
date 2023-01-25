Vagrant.require_version ">= 1.8.0"

Vagrant.configure("2") do |config|
  config.vagrant.plugins = "vagrant-libvirt"
  config.vm.box = "archlinux/archlinux"
  config.vm.provider :libvirt do |libvirt|
    libvirt.video_accel3d = true
    libvirt.cpus = 2
    libvirt.memory = 2048
    libvirt.graphics_type = "spice"
  end
  config.vm.provision "shell",
    inline: "sudo pacman -Sy --noconfirm python"
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
  end
end
