#!/bin/sh
# https://segmentfault.com/a/1190000014992947 

dir=$(pwd)
path="$dir/ZshSource"
mkdir -p $path
echo $dir

###########################
# oh my zsh install, using in iterm2
# hint: need install pip first
###########################
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" 

# install plugin
pip install powerline-status --user
git clone https://github.com/powerline/fonts.git --depth=1
cd $path/fonts
./install.sh 

cd $path
git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
cd $path/oh-my-zsh-agnoster-fcamblor
./install

cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

# highlight
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git