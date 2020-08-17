require "vagrant"

module Vagrant
  module FreeBSD
    class Plugin < Vagrant.plugin("2")
      name "FreeBSD guest"
      description "FreeBSD guest support."

      guest_capability("freebsd", "mount_vmware_shared_folder") do
        require_relative "cap/mount_vmware_shared_folder"
        Cap::MountVmwareSharedFolder 
      end
    end
  end
end
