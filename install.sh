rm -f ~/.zshrc ~/.aliases ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.aliases ~/.aliases
# vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc
# install packages
brew install python
# rich https://github.com/Textualize/rich-cli
python3 -m pip install rich-cli
#https://github.com/ogham/exa
brew install exa

# VIM
rm -rf ~/.vim

# install vundle - vim plugin manage
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall || true

# install power line fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1 /tmp/powerline
# install
cd /tmp/powerline
./install.sh
# clean-up a bit
cd ..
rm -rf /tmp/powerline


# install vim-gitgutter
mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q

