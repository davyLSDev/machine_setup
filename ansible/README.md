# Run this simple playbook to test ansible and connection to localhost

ansible-playbook -i inventory.yml test.yml -c local

# in order to get sudo to install things:
ansible-playbook -i inventory.yml site.yml -c local --ask-become-pass

* [URL](https://blog.laurentcharignon.com/post/laptop-setup-with-ansible/)

# "non-free" apt repositories for debian bullseye (11)
# need to add these in to /etc/apt/source.lst
deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free
deb http://deb.debian.org/debian-security bullseye/updates main contrib non-free
deb-src http://deb.debian.org/debian-security bullseye/updates main contrib non-free
deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

# Maybe generate the file that is needed and just forget about all the rest of the sources.list file. No probably best to make a backup of that file.

# remember apt upgrade, update, autoremove

#-------------- video drivers ---
idea from here: https://www.linuxcapable.com/how-to-install-or-upgrade-nvidia-drivers-on-debian-11-bullseye/ 
lspci | grep -e VGA .... to find out what kind of video driver you have

01:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Turks GL [FirePro V3900]
03:00.0 VGA compatible controller: NVIDIA Corporation GP108 [GeForce GT 1030] (rev a1)


sudo apt install linux-headers-amd64
# install Nvidia drivers
sudo apt install nvidia-detect

Hmm that didn't do anything as far as i can tell:
Try this https://www.nvidia.com/content/DriverDownloads/confirmation.php?url=/XFree86/Linux-x86_64/381.22/NVIDIA-Linux-x86_64-381.22.run&lang=us&type=TITAN

From here:https://www.nvidia.com/Download/driverResults.aspx/118524/en-us/
*** FAILED TO BUILD / INSTALL DRIVER ... build/install errors

# probably good to also install the AMD driver

From here: https://www.amd.com/en/support/previous-drivers/professional-graphics/legacy-products/firepro-v-series/firepro-v3900

*** that FAILED also

# Forget it, just install Jammy Jellyfish
