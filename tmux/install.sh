echo "Cloning tmux plugin manager tpm to ${HOME}/.tmux/plugins/tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Copying tmux config to ${HOME}"
(cd ${HOME} && wget "https://raw.githubusercontent.com/nkone/nvim-basic-ide/master/tmux/.tmux.conf")
