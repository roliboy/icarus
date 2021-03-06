#!/usr/bin/env bash

iso_name="icarus"
iso_label="ICARUS_$(date +%Y%m)"
iso_publisher="Nagy Roland <https://www.roliboy.ml>"
iso_application="Arch based distribution made for CTF players"
iso_version="$(date +%Y.%m.%d)"
install_dir="icarus"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
# airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-comp' 'gzip')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
)
