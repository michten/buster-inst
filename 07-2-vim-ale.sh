#!/bin/sh
# install

# ale
ale_path='/var/lib/vim/addons/bundle/ale'
[ -e $ale_path ] && rm -rf $ale_path
mkdir -p $ale_path
git clone https://github.com/w0rp/ale.git $ale_path

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
