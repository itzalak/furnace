# Archlinux installation

## ISO

- <https://wiki.archlinux.org/title/USB_flash_installation_medium#Using_basic_command_line_utilities>

Download archlinux ISO, and create a installation ISO

```shell
dd bs=4M if={{path/to/archlinux-version-x86_64.iso}} of={{/dev/disk/by-id/usb-My_flash_drive}} conv=fsync oflag=direct status=progress
```

Example

```shell
dd bs=4M if=Downloads/archlinux-2024.11.01-x86_64.iso of=/dev/sdb conv=fsync oflag=direct status=progress
```
