#!/bin/bash

# pacotes
yum install -y epel-release
dnf copr enable atim/lazygit -y
dnf install -y git make cmake gcc gcc-c++ libtool autoconf automake cmake pkgconfig unzip patch gettext which procps-ng ripgrep fzf fd-find lazygit npm xclip wl-clipboard

git config --global user.email jarsilva@bethel.jw.org

# neovim
cd ~
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod +x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage --appimage-extract
mv squashfs-root /nvim
ln -s /nvim/AppRun /bin/nvim

# lazyvim
cd ~
mkdir .config
cd .config
git clone https://github.com/LazyVim/starter ~/.config/nvim

# entr: ferramenta para monitorar alterações nos arquivos e executar um comando.
cd ~
git clone https://github.com/eradman/entr.git
cd entr/
./configure
make test
make install

