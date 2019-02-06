# new workstation paving setup

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# accept xcode stuff
sudo xcodebuild -license

# basic dirs
mkdir ~/bin
mkdir ~/workspace

# command line utils
brew install python3
brew cask install shiftit
brew install wget
brew install tig
brew install jq
brew install vim # update default vim
brew install lastpass-cli
brew install redis
brew install chruby

wget https://raw.githubusercontent.com/jamesjoshuahill/lastpass-ssh-key/master/load -O ~/bin/load-ssh-key
sed -i.bak 's/Josh/Denise/' ~/bin/load-ssh-key
rm ~/bin/load-ssh-key.bak
chmod +x ~/bin/load-ssh-key

# languages
wget https://dl.google.com/go/go1.11.5.darwin-amd64.pkg
gem install bundler

# install bash_it & luanvim
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

curl vimfiles.luan.sh/install | bash
vim-update

# cf, bosh, fly clis
brew tap cloudfoundry/tap
brew install cf-cli
wget https://github.com/concourse/concourse/releases/download/v4.2.2/fly_darwin_amd64 -O ~/bin/fly
chmod +x ~/bin/fly
wget https://github.com/cloudfoundry/bosh-cli/releases/download/v5.4.0/bosh-cli-5.4.0-darwin-amd64 -O ~/bin/bosh
chmod +x ~/bin/bosh
