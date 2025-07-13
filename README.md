# doggieOS
A repository of tweaks and tools that I use on every arch linux install.

this project is basically just detailing everything I have done / want to do with my current system. As I hammer this out I will start writing scripts to automate my arch install / personal distro fully.

# Initial Installation 
-Arch.iso
-archinstall

Bootloader: grub

Swap: true

Filesystem: btrfs

Kernels: Linux & Zen & TKG

Audio: pipewire

Network: NetworkManager

Other Packages: micro

# After Install
ensure I have proper sudo permissions

sudo pacman -Syu fastfetch

sudo pacman -S xorg plasma sddm firefox konsole

sudo systemctl enable sddm.service

reboot

xrandr monitor starup script for login (i have this saved somewhere)

if there is some pure wayland version of this that I can use I would prefer that at this point

reboot again to test monitor script

pull wallpapers themes icons from a github to their respective directories

enable themes icons and wallpaper (in some sort of automated fashio preferably?) [side idea: write a color / theme changer script]

sudo pacman -S (decide on every single daily utility i like to use on linux and install those here)

command line flatpak install discord and other sandboxed apps

set up snapper to work with btrfs to do bootable snapshots

set up virtual machines through qemu virt manager
- windows 11
- macOS
- debian
- RHEL
- Fedora

set up snapper to work with btrfs to do bootable snapshots
