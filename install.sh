rm -f ~/.zshrc ~/.aliases
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.aliases ~/.aliases
# install packages 
# rich https://github.com/Textualize/rich-cli
python -m pip install rich-cli
#https://github.com/ogham/exa
brew install exa

