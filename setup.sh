# Update packages
sudo apt update

# Install git
sudo apt install git-all

# Install zsh
sudo apt install zsh

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create .aliases
curl https://raw.githubusercontent.com/emanoeldelfino/dotfiles/main/.aliases -o ~/.aliases

# create .vimrc
curl https://raw.githubusercontent.com/emanoeldelfino/dotfiles/main/.vimrc -o ~/.vimrc

# create xilcrow theme
curl https://raw.githubusercontent.com/emanoeldelfino/dotfiles/main/.oh-my-zsh/custom/themes/xilcrow.zsh-theme \
    -o ~/.oh-my-zsh/custom/themes/xilcrow.zsh-theme

# set xilcrow theme
sed -i 's/ZSH_THEME=.*/ZSH_THEME="xilcrow"/' ~/.zshrc

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# set oh my zsh plugins
sed -i 's/plugins=.*/plugins=(git ssh-agent zsh-autosuggestions)/' ~/.zshrc

# Install zsh-nvm
git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm

# append to .zshrc
echo "source $HOME/.aliases

path+=('~/bin')
export PATH

source ~/.zsh-nvm/zsh-nvm.plugin.zsh" >> ~/.zshrc

# Install nodejs lts
nvm install --lts

