# Install xcode
xcode-select --install

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update zprofile
echo eval "$(/opt/homebrew/bin/brew shellenv)" > ~/.zprofile

# Restart terminal
exec zsh -l

# Install pyenv requirements
brew install openssl@1.1 readline sqlite3 xz zlib llvm gcc

# Install pyenv and pyenv-virtualenv
brew install pyenv pyenv-virtualenv

# Append to .zshrc
echo eval "$(pyenv init -)" \ eval "$(pyenv virtualenv-init -)" > ~/.zshrc

# Install versions of python:
pyenv install 3.9.2
pyenv install 3.8.13
pyenv install 3.7.10

# Create a virtualenv for a given project
pyenv virtualenv 3.9.2 ml-experiments

# Activate pyenv virtualenv
pyenv activate ml-experiments
pip3 install -r requirements.txt

