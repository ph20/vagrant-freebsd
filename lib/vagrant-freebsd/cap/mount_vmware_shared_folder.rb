# Copyright (c) 2020 Olexander Grynchuk
module Vagrant
  module FreeBSD
    module Cap
      class MountVmwareSharedFolder

        def self.mount_vmware_shared_folder(machine, name, guestpath, options)
          owner = options[:owner]
          group = options[:group]
          machine.communicate.tap do |comm|
            if owner.is_a? Integer
              mount_uid = owner
            else
              mount_uid = "`id -u #{owner}`"
            end

            if group.is_a? Integer
              mount_gid = group
            else
              mount_gid = "`id -g #{group}`"
            end


            # create guest parent folder if doesn't exist
            parent_guest_path = File.dirname(guestpath)
            if !comm.test("test -d \"#{parent_guest_path}\"", sudo: true)
              comm.sudo("mkdir -p \"#{parent_guest_path}\"")
            end
#vmhgfs-fuse -o uid=`id -u vagrant`,gid=`id -u vagrant`,allow_other .host:/-workspace #$app_dir
            # Set permissions correctly on the link
            comm.sudo("vmhgfs-fuse -o uid=#{mount_uid},gid=#{mount_gid},allow_other .host:/#{name} \"#{guestpath}\"")
          end
        end
        
      end
    end
  end
end