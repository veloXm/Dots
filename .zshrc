#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Alias
alias mpy='source /home/veloXm/PyEnv/myenv/bin/activate'
alias adb='/home/veloXm/Downloads/android-tools/platform-tools/adb'
alias gtk='cat /home/veloXm/projects/token.txt | xclip -selection clipboard'
alias mntsda4='sudo mount.ntfs-3g /dev/sda4 /mnt/'
alias xo='xdg-open'
alias nn='cd ~/Workspace/ && nvim'
alias ws='cd ~/Workspace/'
