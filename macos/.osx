# Check for Mac App Store updates everyday.
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# Software Updates globally for macOS.
softwareupdate -i -a
# Show hidden files in Finder.
defaults write com.apple.finder AppleShowAllFiles -bool TRUE
# Key repeat
defaults write -g ApplePressAndHoldEnabled -bool false
# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0
# Open finder in list view always
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# Show the ~/Library folder.
chflags nohidden ~/Library
# Change screenshot directory to ~/Downloads
defaults write com.apple.screencapture locations ~/Downloads
# Changes default screenshot name.
defaults write com.apple.screencapture name "screenshot"
# Disables drop-shadow on screenshots.
defaults write com.apple.screencapture disable-shadow -bool TRUE
killall SystemUIServer
# Prevent apps from saving to iCloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool FALSE
# Disables Dashboard completely
defaults write com.apple.dashboard mcx-disabled -boolean TRUE
