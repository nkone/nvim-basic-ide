# Install dependencies

dependencies() {
    sudo apt-get update
    sudo apt-get install -y npm nodejs fd-find python3-venv ripgrep zsh ninja-build \
        gettext cmake unzip curl xsel
    # Node support
    npm i -g neovim
    # Python support
    pip install pynvim
}

# Neovim installation
# Install from appimage
from_app() {
    echo "Installing neovim from appimage"
    sudo apt remove neovim -y
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage --appimage-extract
    # Optional: exposing nvim globally.
    sudo mv squashfs-root /
    sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
    rm nvim.appimage
    rm -rf squashfs-root
}

# Install from source
from_source() {
    echo "Installing neovim from source"
    sudo apt remove neovim -y
    cd $HOME
    git clone https://github.com/neovim/neovim.git
    cd neovim
    git checkout release-0.9
    make CMAKE_BUILD_TYPE=Release
    sudo make install
}

# Folder
nvim_config() {
    rm -rf $HOME/.config/nvim
    git clone https://github.com/nkone/nvim-basic-ide.git ~/.config/nvim
}

nerdfonts() {
    cd $HOME
    git clone https://github.com/ronniedroid/getnf.git
    (cd getnf && ./install.sh)
    echo "Use getnf and install fonts for terminals."
    echo "After installation, change terminal font to correctly display glyphs and icons"
}

help() {
  echo "Usage: ./install.sh [function name]"
  echo "Available functions:"
  echo "dependencies: install what's needed before installation"
  echo "from_app: install frm nvim appimage"
  echo "from_source: build nvim from source code"
  echo "nvim_config: remove current nvim config folder and update with remote repo"
}

if [ "$#" -eq 0 ] ; then
  help
fi

"$@"
