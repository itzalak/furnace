# furnace

Exploration of archlinux installation based on XFCE

This is a WIP.

There is no expected outcome besides experimentation.

## Installation

Clone this repository

```shell
git clone git@github.com:itzalak/furnace.git {{destination/directory}}
```

Run minimal setup script to install required tools

```shell
curl -fsSL https://raw.githubusercontent.com/itzalak/furnace/refs/heads/main/taskfiles/scripts/00-minimal-setup.sh | bash
```

### Installation order

- Archinstall

Revisit

- Run minimal-setup from curl
- Setup ssh
- Clone repository
- Initialize neovim submodule
- Setup nvim
- Setup bluetooth
- Setup bash

Unsure

- Python
- Yay

Missing but important

- Git alias
- Bash not recognizing paths after installation of python
