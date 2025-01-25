#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="SunnyOS"
iso_label="SUNNY_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Nisel11"
iso_application="SunnyOS Feather Edition Live/Rescue CD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="sunny"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '19' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/etc/sudoers"]="0:0:400"
  ["/root"]="0:0:750"
)
