#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) "
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt

echo ''
echo 'Please enter git user.name: '
read gituser
git config --global user.name "$gituser"
echo 'Please enter git user.email:'
read gitemail
echo ''
git config --global user.email "$gitemail"
echo 'Installing vim bundles...'
vim +BundleInstall
echo 'Done'
source ~/.bash_profile
