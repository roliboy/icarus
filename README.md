<div align="center">
<p>
    <img width="256" src="images/icarus-logo.png">
</p>

<h1>Archiso profile for CTF players</h1>

[package list](doc/packages.md)
| [keyboard shortcuts](doc/shortcuts.md)
<!-- | [screenshot gallery](https://#) -->
<!-- | [give me your money](https://#) -->


</div>


## but why? [WIP]

## icarus vs kali and parrot [WIP]

## Technical details [WIP]

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
- Removed reflector
- Automatically sets timezone based on ip geolocation
- Removed PXE mkinitcpio hooks
- Removed PXE boot entries
- Increased COW space size to 2GB on both BIOS and UEFI
- Removed cloud-init
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
