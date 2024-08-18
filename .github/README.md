
<div align="center">
<img width="30%" src="./assets/catgorl.png">
</div>

<div align="center">
  <p></p>
  <p><b><i> ~ Minimalistic Dotfiles ~ </i></b></p>
  <img src="https://img.shields.io/github/last-commit/dynalar/dotfiles/main?color=%23c4a7e7&style=for-the-badge">
  <img src="https://img.shields.io/github/repo-size/dynalar/dotfiles?color=%23e0def4&style=for-the-badge">
  <img src="https://img.shields.io/github/stars/dynalar/dotfiles?color=%23ebbcba&style=for-the-badge">
  <img src="https://img.shields.io/github/license/dynalar/dotfiles?color=%239ccfd8&style=for-the-badge">
</div>


| ![1](./assets/s1.png) | ![2](./assets/s2.png) |
| --- | --- |

### ***Table of Contents***

- **[Table of Contents](#table-of-contents)**
    <!-- - **[Screenshots](#screenshots)** -->
    - **[Environment](#environment)**
    - **[Dependencies](#dependencies)**

<!-- ### ***Screenshots*** <details>
<summary><b>Nord</b></summary>

| ![ThemeSelector](./assets/nord/theme-selector.png) | ![Nvim](./assets/nord/nvim.png) |
| --- | --- |
| ![Zathura](./assets/nord/zathura.png) | ![FileManager](./assets/nord/explorer.png) |

</details>

<details> -->

### ***Environment***

- **Distro**: Mac OS 11 / Linux Mint
- **Terminal**: Terminator/iTerm 2
- **Editor**: NeoVim
- **Browser**: Firefox
- **Shell**: Zsh
- **App Laucher**: Rofi/Finder
- **Font**: JetBrainsMonoNFM

### ***Installation***
1. Clone this directory to your home directory.

2. Run the makefile command to symbolically link all of the configurations to this repository.

Dependencies are listed within the `dependencies/` directory.

### Example

```bash
cd ~

cd dotfiles/

make install-deps-* # rhel, mac, or deb
make all
```