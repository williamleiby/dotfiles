#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
  echo "Usage: install.sh <home_directory>"
  exit 1
fi

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/dotfiles

# list of files/folders to symlink in ${homedir}
files="bash_profile bashrc bash_aliases"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
  echo "Creating symlink to $file in home directory."
  ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# yarn

if (( $+commands[yarn] ))
then
  export PATH="$PATH:`yarn global bin`"
fi

# Run the Homebrew script
./homebrew/homebrew.sh
