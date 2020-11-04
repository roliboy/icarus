# Icarus

Custom archiso profile for CTF players

## Desktop environment
KDE + kwin-krohnkite
dracula inspired colors
live user paswordless sudo
shortcuts below

## Archstrike

## Included applications

htop

bashtop

neofetch

bat

fd

fzf

exa

git

fish + fzf + dracula (keyboard shortcuts below)

tldr

man-db

man-pages

gdb + pwndbg

radare2 and cutter with r2ghidra-dec

openssh

nmap

netcat

okteta

hexedit

ltrace

strace

binwalk

checksec

ropgadget

ciphey (custom)

perl-image-exiftool

konsole + fira-code-nerd-font

neovim + airline + fzf + nerdtree + nerdcommenter + visual_multi + dracula

dolphin

falkon

firefox + dark-reader + ublock-origin

lynx

p7zip

tcc

## Keyboard shortcuts

TODO

## Technical details

### Major differences between icarus and releng

Removed accessibility features like a screen reader and support for braille TTYs introduced with releng 49
- removed livecd-alsa-unmuter.service (sound.target.wants)
- removed livecd-talk.service
- removed archiso-x86_64-speech-linux.conf efiboot entry
- removed brltty package
- removed livecd-sounds package
- removed espeakup package

Replaced systemd-networkd and systemd-resolved with NetworkManager
- removed resolv.conf
- removed dhcpcd
- dhcp is now handled by networkmanager with dhclient
- dns is handled by networkmanager with dnsmasq
- systemd-networkd systemd units replaced with networkmanager
- systemd-resolved systemd units replaced with networkmanager
- systemd-networkd-wait-online.service replaced with NetworkManager-wait-online.service
- removed systemd-networkd.socket

Removed iwd, wireless connections are managed by networkmanager

Automatically sets timezone based on ip geolocation

Removed PXE mkinitcpio hooks

Removed PXE boot entries

Increased COW space (2GB on UEFI)

Pacman keyring is populated with archstrike keys at boot

Zsh has been replaced with fish

Removed choose-mirror.service systemd unit which allowed selecting a pacman mirror from the kernel parametes

Added archstrike and multilib repositories to pacman.conf

Replaced vim with neovim

Replaced bind-tools with bind

Removed agetty autologin systemd unit

Removed darkhttpd

Removed clonezilla

Removed diffutils

Removed gpm

Removed linux-atm

Removed alsa-utils


## Build instructions

Install archiso

```bash
sudo pacman -S archiso
```

Clone this repository

```bash
git clone https://github.com/roliboy/icarus.git
```

Build the image

```bash
sudo mkarchiso -v icarus/
```
