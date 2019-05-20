# Check for Mac App Store updates everyday.
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# Software Updates globally for macOS.
softwareupdate -i -a
