#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="icarus"
iso_label="ICARUS_$(date +%Y%m)"
iso_publisher="Nagy Roland <https://www.roliboy.ml>"
iso_application="Custom Arch flavor made for CTF players"
iso_version="$(date +%Y.%m.%d)"
install_dir="icarus"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
