#! /bin/bash

pacman -Syu fastfetch

sleep 5

pacman -S micro grub-btrfs xorg plasma-x11-session plasma sddm firefox chromium konsole dolphin kdeconnect kate keepassxc amdgpu_top spectacle ark libreoffice-still gwenview gimp vlc handbrake kdenlive reaper signal-desktop

sleep 5

systemctl enable sddm.service
