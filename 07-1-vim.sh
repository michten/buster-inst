#!/bin/sh
# vim system wide config.
# Every user, including root, will have this confing.

# Abandoned aproach, works only in bash, left to remember:
# DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# Now run this script from its directory

vim_pkg="vim git \
vim-addon-manager vim-autopep8 vim-pathogen vim-python-jedi vim-scripts vim-syntax-docker \
ansible-lint flake8 isort mypy pylint yapf yapf3 shellcheck flawfinder foodcritic python3-proselint tidy jsonlint jq chktex yamllint"

# 	Tex 	(430 MB on system without X11)
#vim_pkg="$vim_pkg lacheck"

# 	C 	(650 MB)
#vim_pkg="$vim_pkg clang clang-tidy cppcheck clang-format"

# 	Haskell (800 MB)
#vim_pkg="$vim_pkg haskell-platform haskell-stack alex"

# 	X11
#vim_pkg="$vim_pkg vim-gtk vim-gui-common"

# 	disapear? from repo:
#vim_pkg="$vim_pkg prospector gitlint"

#apt-get -y install $vim_pkg
aptitude -y install $vim_pkg


vimrc='/etc/vim/vimrc.local'

# rm all /home/$usrdir/.vimrc;
# vim reads /usr/share/vim/vimrc, then /usr/share/vim/vim80/debian.vim and next
# if there are no .vimrc in users home directories: /etc/vim/vimrc .
# There are 'syntax on' and 'filetype plugin intend on'.
# Lepiej usunąc plk ust użytkownika czy dodawać do niego?
[ -e /root/.vimrc ] && mv /root/.vimrc /root/.vimrc.bak

vim-addon-manager install -w colors-sampler-pack detectindent matchit python-indent python-jedi surround autopep8 dockerfile &&
cp 07-herald_mod.vim /var/lib/vim/addons/colors/herald_mod.vim

# sed -i /jesli znajdzie linie z 'ustawienie'/to zastąpi tą linie 'ustawienie'm/ || echo 'ustawienie' >> $vimrc
#grep 'colorscheme herald_mod' $vimrc || echo 'colorscheme herald_mod' >> $vimrc
#grep 'execute pathogen#infect()' $vimrc || echo 'execute pathogen#infect()' >> $vimrc
echo \
'set number
set relativenumber

inoremap kk <ESC>
colorscheme herald_mod
execute pathogen#infect()' > $vimrc

# Ale, and others. Outside to easy upgrade
./07-vim-ale.sh

update-alternatives --set editor /usr/bin/vim.nox

