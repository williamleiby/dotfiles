# shell
alias zshrc="open ~/.zshrc"
alias c="clear"
alias h="history"
alias ls="gls -F --color"
alias l="gls -lAh --color"
alias ll="gls -l --color"
alias la='gls -A --color'
alias vdh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'"
alias ddh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
# tmux
alias tmux="tmux -u"
alias attach="tmux a -t"
alias killsession="tmux kill-session -t"
# python
alias pip="pip3"
alias python="python3"
# extras
alias ytdl="youtube-dl"
alias pdf="percollate pdf --output new-pdf.pdf"
alias killpsql="sudo pkill -u postgres"
alias sqlpro="open /Applications/Sequel\ Pro.app"
# ssh
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
