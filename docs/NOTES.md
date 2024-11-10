# NOTES

Starting from a blank slate gives me a few questions and opportunities, first and foremost, un-bloat the installation,
second split by need and requirements.

Relevant documentation

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

Stuff I am concerned

- Not sure about btrfs and partitions
- Disk partitions for dual boot
- Can I use calamares? or ALCI?
    - <https://github.com/arch-linux-calamares-installer/alci-iso-dev>
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
- nvidia-open might not work with the LTS kernel
- I am starting to think asusctl is not reasonable or valuable, optionally there is rog-daemon, still unsure
    - <https://aur.archlinux.org/packages/rog-daemon>
