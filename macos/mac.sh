# Check for Mac App Store updates everyday.
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# Software Updates globally for macOS.
softwareupdate -i -a
# Key repeat
defaults write -g ApplePressAndHoldEnabled -bool false
# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0
# Open finder in list view always
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# Show the ~/Library folder.
chflags nohidden ~/Library
