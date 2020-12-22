#!/bin/sh
# install

# ale
ale_path='/var/lib/vim/addons/bundle/ale'
[ -e $ale_path ] && rm -rf $ale_path
mkdir -p $ale_path
git clone https://github.com/w0rp/ale.git $ale_path

# vim-orgmode
vimorgmode_path='/var/lib/vim/addons/bundle/vim-orgmode'
[ -e $vimorgmode_path ] && rm -rf $vimorgmode_path
mkdir -p $vimorgmode_path
git clone https://github.com/jceb/vim-orgmode $vimorgmode_path

# speeddating for vim-orgmode
speeddating_path='/var/lib/vim/addons/bundle/speeddating'
[ -e $speeddating_path ] && rm -rf $speeddating_path
mkdir -p $speeddating_path
git clone https://tpope.io/vim/speeddating.git $speeddating_path

# alex	   --— Catch insensitive, inconsiderate writing. npm.
#git https://github.com/wooorm/alex

# prettier --- Opinionated Code Formatter. npm.
#git https://github.com/prettier/prettier

# hadolint --- dockerfile linter. Haskell depedence 800MB.
#git https://github.com/hadolint/hadolint

# HTMLHint --- npm.
#git https://github.com/yaniswang/HTMLHint

# SQLint   --- a simple SQL linter. ruby gem.
#git https://github.com/purcell/sqlint

# TFLint   --- Terraform linter
#git https://github.com/wata727/tflint
