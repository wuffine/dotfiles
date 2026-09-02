## credits

- [zacoons](https://zacoons.com)
- [oceanicc](https://codeberg.org/oceanicc)
- [ndpm13](https://ch-naseem.com)

## setup

### base installation

https://wiki.artixlinux.org/main/installation

- use `helix`, instead of `nano`
- use `opendoas`, instead of `sudo`
- use `limine`, instead of `grub`
- use `networkmanager`, instead of `connman`

### clone the dotfiles

```
doas pacman -S base-devel git stow
git clone https://git.disroot.org/hetsido/dotfiles.git
cd dotfiles
make
```

run `make delete`, to delete.

### extend pacman

### arch repos

```
doas pacman -S artix-archlinux-support
doas pacman -Syu
```

### aur helper

```
git clone https://aur.archlinux.org/paru-git.git
cd paru-git
makepkg -sric
cd .. && rm -rf paru-git
```

### dependencies

```
# fonts:
doas pacman -S noto-fonts-cjk noto-fonts-emoji

# sound:
doas pacman -S userspawn-dinit pipewire-dinit pipewire-pulse-dinit wireplumber-dinit
doas dinitctl enable userspawn
dinitctl enable pipewire
dinitctl enable pipewire-pulse
dinitctl enable wireplumber

# stuff:
doas pacman -S btop dunst foot fzf git gnome-themes-extra helix mpv papirus-icon-theme polkit-gnome qt5-wayland qt6-wayland rofi satty swaybg waybar wget wiremix wl-clip-persist wl-clipboard xdg-desktop-portal-gtk xdg-desktop-portal-wlr zsh zsh-syntax-highlighting
paru -S mangowm

# file manager:
doas pacman -S gvfs gvfs-smb gvfs-mtp pcmanfm

# keep clock up to date:
doas pacman -S chrony-dinit
doas dinitctl enable chrony
```

nvidia: `doas ln -s /usr/lib/gbm/nvidia-drm_gbm.so /usr/lib/gbm/nvidia_gbm.so`
