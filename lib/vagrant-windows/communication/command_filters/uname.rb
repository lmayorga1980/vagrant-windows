# cat /etc/release | grep -i OmniOS
# cat /etc/redhat-release
# cat /etc/issue | grep 'Core Linux'
# cat /etc/release | grep -i SmartOS

module VagrantWindows
  module Communication
    module CommandFilters

      # Converts a *nix 'uname' command to a PowerShell equivalent
      class Uname

        def filter(command)
          # uname -s | grep 'Darwin'
          # uname -s | grep VMkernel
          # uname -s | grep 'FreeBSD'
          # uname -s | grep 'Linux'
          # uname -s | grep NetBSD
          # uname -s | grep 'OpenBSD'
          # uname -sr | grep SunOS | grep -v 5.11
          # uname -sr | grep 'SunOS 5.11'

          # uname is used to detect the guest type in Vagrant, so don't bother running
          # to speed up OS detection
          ''
        end

        def accept?(command)
          command.start_with?('uname ')
        end

      end

    end
  end
end
