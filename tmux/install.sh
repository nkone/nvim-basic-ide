echo "Cloning tmux plugin manager tpm to ${HOME}/.tmux/plugins/tpm"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Copying tmux config to ${HOME}"
cp .tmux.conf ~/.tmux.conf
