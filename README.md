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

# After Install - Base Install and My Apps
update and fastfetch for the meme (it's not a computer unless i can run fastfetch)

sudo pacman -Syu fastfetch

this will also verify that i have proper sudo permissions

sudo pacman -S micro xorg plasma-x11-session plasma sddm firefox chromium konsole dolphin kdeconnect kate keepassxc amdgpu_top spectacle ark libreoffice-still gwenview gimp vlc handbrake kdenlive reaper signal-desktop

I can just select defaults for all these and everything should install how i want.

sudo systemctl enable sddm.service

reboot

# BTRFS SNAPSHOTS

get a list of subvolumes: sudo btrfs subv list /

OKAY so I tried this - This is still a work in progress

I used timeshift to make snapshots and grub-btrfs to add them to grub.

https://github.com/Antynea/grub-btrfs

sudo /etc/grub.d/41_snapshots-btrfs && sudo grub-mkconfig -o /boot/grub/grub.cfg

This works but i think i would prefer to use snapper instead of timeshift, and automate the process with a custom script.

When i booted from a snapshot i noticed that new packages and a test file in home was still there. I need to learn more about this.

# SDDM / XRANDR

xrandr monitor starup script for login (in this repo)

reboot again to test sddm/xrandr monitor script

# THEMES

Just use the plasma store to grab these real quick

papirus icons

carl look and feel global theme

wallpapers included in this repo

# VMs

set up virtual machines through qemu virt manager
- windows 11
