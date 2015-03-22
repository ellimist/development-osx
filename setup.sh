#! /bin/bash

function separator() {
  echo " "
  echo " "
  echo "###########################################"
  echo " "
  echo " "
}

### Install Xcode developer tool
echo "install xcode developer tool..."
xcode-select --install
separator

### Install Homebrew
echo "install homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "update homebrew packages..."
brew update
echo "upgrade homebrew packages..."
brew upgrade
echo "install homebrew packages..."
brew install node bash-completion wget git mongodb redis mysql postgresql sbt the_silver_searcher rbenv ruby-build
echo "cleanup homebrew packages..."
brew cleanup
separator

### Install Global Node Packages
echo "install node packages..."
npm install -g grunt-cli grunt-init express express-generator
separator

### Ruby Stuff
echo "install ruby 1.9.3..."
rbenv install 1.9.3-p551
echo "set ruby 1.9.3..."
rbenv global 1.9.3-p551
echo "install ruby gems..."
sudo gem install git-up sass jekyll rouge
separator

### Heroku toolbelt
echo "install Heroku Toolbelt..."
wget -qO- https://toolbelt.heroku.com/install.sh | sh
separator

### Copy Configs
cp ./Assets/Bash/.bashrc ~/.bashrc
echo ".bashrc done"
cp ./Assets/Bash/.gitconfig ~/.gitconfig
echo ".gitconfig done"
cp ./Assets/Bash/.jump ~/.jump
echo ".jump done"
cp ./Assets/Fonts/* ~/Library/Fonts/
echo "Fonts done"
separator
