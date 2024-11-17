# NOTES

Starting from a blank slate gives me a few questions and opportunities, first and foremost, un-bloat the installation,
second split by need and requirements.

## Relevant documentation

- <https://github.com/archlinux/archinstall>
- <https://wiki.archlinux.org/title/Installation_guide>
- <https://wiki.archlinux.org/title/Laptop>
- <https://wiki.archlinux.org/title/Xfce>
- <https://docs.xfce.org/start>
- <https://wiki.archlinux.org/title/Laptop/ASUS>
- <https://dlcdnets.asus.com/pub/ASUS/GamingNB/GA403UV/0407_G23090_GA403U_V2_A.pdf?model=ROG%20Zephyrus%20G14%20(2024)%20GA403>
- <https://dlcdnets.asus.com/pub/ASUS/GamingNB/GA403UV/E23090_GA403U_EM_V2.pdf?model=ROG%20Zephyrus%20G14%20(2024)%20GA403>
- <https://wiki.archlinux.org/title/ASUS_Linux>
- <https://www.reddit.com/r/ZephyrusG14/comments/1ah226s/ive_made_another_rog_control_daemon_for_linux/>

## Concerns

- Not sure  how to setup dual boot with btrfs and partitions
    - Seems resource intensive and error prone
    - Disk management can be done outside the app, and then mounted
- <https://wiki.archlinux.org/title/Partitioning#Example_layouts>
- Look into <https://gitlab.com/btrfs-assistant/btrfs-assistant>
- <https://wiki.archlinux.org/title/Snapper>

- xfce4-goodies has garbage that won't be useful for my use cases
- xconf how easy it is to export/import settings by code
- xfce dot config folder contents
- AMD + NVIDIA
- dGPU management
    - According to the wiki, open drivers for both apps should be enough
    - <https://wiki.archlinux.org/title/PRIME#Open-source_drivers>
    - both graphics run simultaneously but the dGPU has minimal resource consumption
    - unknown impact on steam
    - open drivers will allow me to keep using ly
    - probably don't need supergfxctl
- I am starting to think asusctl is not reasonable or valuable, optionally there is rog-daemon, still unsure
    - <https://aur.archlinux.org/packages/rog-daemon>
- Should I try EndeavourOS?
    - uses calamares
    - has default configurations already set for many apps

## Open questions

- Can I configure btrfs 'partitions' after installation?
    - For snapshots I think yes, others still unclear
- EFI size for Nvidia + dual boot
- Archinstall did not install AMD graphics, can I start with AMD and later install Nvidia? How?
- Basic setup of bash is dreadful, needs revisiting
-

## Clarifications

It is possible to set up the disk configuration before using archinstall, however the configuration is not
straightforward, and dual booting was simple for win 11, just copying the bootloader was enough, however,
no clue on other linux installations. Needs research.

## Tools to try

- flatpack
- alpaca for ollama
-
