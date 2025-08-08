# doggieOS
A repository of tweaks and tools that I use on every arch linux install.

this project is basically just detailing everything I have done / want to do with my current system. As I hammer this out I will start writing scripts to automate my arch install / personal distro fully.

# Initial Installation 
ARCHINSTALL

Bootloader: grub

Swap: true

Filesystem: btrfs USE SUBVOLUMES and select timeshift for snapshot tool

Kernels: Linux & Zen

Audio: pipewire

Network: NetworkManager

Other Packages: micro

# After Install
update and fastfetch for the meme (it's not a computer unless i can run fastfetch)

sudo pacman -Syu fastfetch

this will also verify that i have proper sudo permissions

# Base Install and Dependencies

sudo pacman -S micro xorg plasma-x11-session plasma sddm firefox chromium konsole dolphin kdeconnect kate keepassxc amdgpu_top spectacle ark libreoffice-still gwenview gimp vlc handbrake kdenlive reaper signal-desktop

I can just select defaults for all these and everything should install how i want.

sudo systemctl enable sddm.service

reboot

# BTRFS SNAPSHOTS

get a list of subvolumes

sudo btrfs subv list /

Boot up timeshift and make a test snapshot

Reboot and attempt to boot from snapshot

# SDDM / XRANDR

xrandr monitor starup script for login (in this repo)

reboot again to test sddm/xrandr monitor script

# THEMES

papirus icons (in this repo)

carl look and feel global theme (in this repo)

pull wallpapers themes icons from a github to their respective directories

enable themes icons and wallpaper (in some sort of automated fashio preferably?) [side idea: write a color / theme changer script]

sudo pacman -S (decide on every single daily utility i like to use on linux and install those here)

command line flatpak install discord and other sandboxed apps

set up snapper to work with btrfs to do bootable snapshots

set up virtual machines through qemu virt manager
- windows 11
