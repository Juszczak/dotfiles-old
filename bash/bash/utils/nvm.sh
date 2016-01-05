nvm_installer="https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh"

NVM_DIR="$HOME/.nvm"

if [ ! -d $NVM_DIR ]; then
	source <(curl -o- $nvm_installer)
fi

unset nvm_installer

export NVM_DIR
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
