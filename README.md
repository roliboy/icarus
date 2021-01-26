<div align="center">
<p>
    <img width="256" src="images/icarus-logo.png">
</p>

<!-- <h1>CTF distribution</h1> -->
<h1>Custom archiso profile for CTF players</h1>

<!--
[link1](https://#) |
[link2](https://#) |
[link3](https://#) |
[link4](https://#)
-->

</div>

## Included applications and tools


### binary/reversing/pwn

- pwndbg
- r2cutter with ghidra decompiler
- checksec
- ltrace and strace
- pwntools

### steganography/forensics

- exiftool
- binwalk
- ciphey [currently broken kek]
- testdisk
- volatility

### network/pentest

- nmap
- netcat
- wireshark
- tcpdump
- gobuster
- john
- hydra
- metasploit
- rockyou and dirbuster wordlists

### command line utilities

- bat
- exa
- fd
- dust
- ripgrep
- tokei
- hyperfine
- bottom
- tealdeer
- bandwhich
- zoxide
- bpython
- procs
- sd
- fzf

## Desktop environment

KDE with krohnkite tiling script and multiple virtual desktops

- konsole
- dolphin

### browsers

- ungoogled chromium with darkreader and ublock origin
- tor browser

### editors

- visual studio code
- kate
- neovim with some plugins



## Keyboard shortcuts

TODO

## Technical details

### Major differences between icarus and releng

- Removed accessibility features like a screen reader and support for braille TTYs introduced with releng 49
- - removed livecd-alsa-unmuter.service (sound.target.wants)
- - removed livecd-talk.service
- - removed archiso-x86_64-speech-linux.conf efiboot entry
- - removed brltty package
- - removed livecd-sounds package
- - removed espeakup package
- Replaced systemd-networkd and systemd-resolved with NetworkManager
- - removed resolv.conf
- - removed dhcpcd
- - dhcp is now handled by networkmanager with dhclient
- - dns is handled by networkmanager with dnsmasq
- - systemd-networkd systemd units replaced with networkmanager
- - systemd-resolved systemd units replaced with networkmanager
- - systemd-networkd-wait-online.service replaced with NetworkManager-wait-online.service
- - removed systemd-networkd.socket
- Removed iwd, wireless connections are managed by networkmanager
- Automatically sets timezone based on ip geolocation
- Removed PXE mkinitcpio hooks
- Removed PXE boot entries
- Increased COW space size to 2GB on both BIOS and UEFI
- Pacman keyring is populated with archstrike keys at boot
- Zsh has been replaced with fish
- Removed choose-mirror.service systemd unit which allowed selecting a pacman mirror from the kernel parametes
- Added archstrike and multilib repositories to pacman.conf
- Replaced vim with neovim
- Replaced bind-tools with bind
- Removed agetty autologin systemd unit
- Removed [darkhttpd, clonezilla, diffutils, gpm, linux-atm, alsa-utils, arch-install-scripts, kitty-terminfo, rxvt-unicode-terminfo, termite-terminfo, ddrescue, fsarchiver, terminus-font, memtest86+, lftp]


## Build instructions

- Set up the custom [icarus package repository](https://github.com/roliboy/icarus-pkgbuilds)

```bash
git clone https://github.com/roliboy/icarus-pkgbuilds.git
```

Build the packages

```bash
make
```

Clone this repository

```bash
git clone https://github.com/roliboy/icarus.git
```

Install archiso

```bash
sudo pacman -S archiso
```

Build the image

```bash
sudo make
```

<!-- ## icarus vs kali and parrot -->