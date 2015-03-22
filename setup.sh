#! /bin/bash

function separator() {
  echo " "
  echo " "
  echo "###########################################"
  echo "###########################################"
  echo "###########################################"
  echo " "
  echo " "
}

### Install Xcode console tool
xcode-select --install
separator

### Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew install node bash-completion wget git mongodb redis mysql postgresql sbt the_silver_searcher rbenv ruby-build
brew cleanup
separator

### Install Global Node Packages
npm install -g grunt-cli grunt-init express express-generator
separator

### Ruby Stuff
rbenv install 1.9.3-p551
rbenv global 1.9.3-p551
sudo gem install git-up sass jekyll rouge
separator

### Heroku toolbelt
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
