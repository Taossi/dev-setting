#!/bin/sh
# https://segmentfault.com/a/1190000014992947 

path="/ZshSource"
mkdir -p $path

###########################
# oh my zsh install, using in iterm2
# hint: need install pip first
###########################
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" 

# highlight
git clone https://gitee.com/mo2/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install plugin
pip install powerline-status --user
git clone https://github.com/powerline/fonts.git --depth=1
cd $path/fonts
./install.sh 

cd ..
git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
cd $path/oh-my-zsh-agnoster-fcamblor
./install


cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git