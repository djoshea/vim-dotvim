
To install:

    cd ~
    git clone git@github.com:djoshea/vim-dotvim.git

    mv vim-dotvim .vim
    ln -s .vim/vimrc .vimrc

On Ubuntu:
    ln -s .vim/gvimrc_ubuntu .gvimrc

Install submodules:
    cd .vimrc
    git submodule init
    git submodule update

Install font Ubuntu Mono for Powerline by double clicking on it in .vim/fonts/

Install command-t:

    sudo apt-get install rake ruby-dev
    cd .vim/bundle/command-t
    sudo apt-get install rake
    rake make

