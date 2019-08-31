# Install macOS Applications
brew cask install xcode
brew cask install java
brew cask install lastpass
brew cask install appcleaner
brew cask install cleanmymac
brew cask install cleanmydrive
brew cask install google-chrome
brew cask install alfred
brew cask install magnet
brew cask install backblaze
brew cask install postgresql
brew cask install pgadmin4
brew cask install postman
brew cask install sketch
brew cask install xmind
brew cask install dropbox
brew cask install jetbrains-toolbox
brew cask install transmit
brew cask install malwarebytes
brew cask install tunnelbear
brew cask install kindle
brew cask install discord
brew cask install slack
brew cask install pdf-expert
brew cask install itsycal
brew cask install the-unarchiver
brew cask install utorrent
brew cask install speedtest
brew cask install firefox
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install docker
brew cask install sourcetree
brew cask install spotify
brew cask install iterm2
brew cask install google-backup-and-sync
brew cask install vlc
brew cask install cocoapods
brew cask install little-snitch

# Install Brew Packages
brew install hub
brew install python
brew install pyenv
brew install pipenv
brew install tree
brew install node
brew install getsentry/tools/sentry-cli
brew install yarn
brew install git
brew install nvm
brew install tophat/bar/yvm
brew install tmux
brew install youtube-dl
brew install zsh
brew install circle-ci
brew tap heroku/brew
brew install heroku
brew tap thoughtbot/formulae
brew install rcm
brew install the_silver_searcher
brew install asdf
brew install postgresql
brew install mysql
brew install redis
brew install go
brew install r
brew install terraform
brew install rbenv
brew install ruby-build
brew install watchman
brew install virtualbox-guest-utils

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Extras

# PostgreSQL
sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp
/usr/local/opt/postgres/bin/createuser -s postgres
# Heroku
heroku update