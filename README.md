# doggieOS
A repository of tweaks and tools that I use on every arch linux install.

this project is basically just detailing everything I have done / want to do with my current system. As I hammer this out I will start writing scripts to automate my arch install / personal distro fully.

# ARCHINSTALL

mirrors and repos: US

Disk Configuration > Use best-effort
- would you like to use btrfs subvolumes with default structure? > Yes
- would you like to use compression or disable COW? > Use Compression
- BTRFS Snapshots > Timeshift

Bootloader > grub

Swap > defaults / swap on zram enabled

Hostname > doggie

Authentication > add root password and a user account with sudo privileges

Profile > leave blank

Applications >
- bluetooth: whatever
- audio: pipewire

Kernels > linux & linux zen

Network configuration > Use NetworkManager

No additional packages

Timezone > US/Arizona

NTP > Enabled

# BASE INSTALL AND MY APPS

sudo pacman -Syu fastfetch

sudo pacman -S micro xorg plasma-x11-session plasma sddm firefox chromium konsole dolphin kdeconnect kate keepassxc amdgpu_top spectacle ark libreoffice-still gwenview gimp vlc handbrake kdenlive reaper signal-desktop

I can just select defaults for all these and everything should install how i want.

sudo systemctl enable sddm.service

reboot

# BTRFS SNAPSHOTS

run timeshift setup wizard

sudo pacman -S grub-btrfs inotify-tools

sudo EDITOR=micro systemctl edit --full grub-btrfsd

change the ExecStart= line to the following: 
- ExecStart=/usr/bin/grub-btrfsd --syslog --timeshift-auto

sudo systemctl enable grub-btrfs

reboot

sudo journalctl -f

open timeshift and make a snapshot

check journalctl to see if it worked

reboot again to check the grub entries

# SDDM / XRANDR

xrandr monitor starup script for login (in this repo)

reboot again to test sddm/xrandr monitor script

# YAY

I'm going to set up yay although I intend on avoiding the AUR as much as possible with all the malware going around.

YAY:

sudo pacman -Syu

sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

yay --verison

install mullvad-vpn from the aur (be careful! lol)

# FLATPAKS

I'm going to set up flatpaks for apps I don't trust or can't find elsewhere.

sudo pacman -S flatpak

reboot

flatpak install flathub com.discordapp.Discord

flatpak install flathub com.vscodium.codium

# THEMES

Just use the plasma store to grab these real quick

papirus icons

carl look and feel global theme

wallpapers included in this repo

# FSTAB

in this repo - mount ur drives up

# AMD DRIVERS


# VMs

set up virtual machines through qemu virt manager
- windows 11
