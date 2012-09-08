    cd 
    git clone git://github.com/zhuxulu/vim.git
    ln -sfn vim ~/.vim
    ln -sfn vimi/vimrc ~/.vimrc
    cd vim

    git clone https://github.com/gmarik/vundle.git bundle/vundle

    vim +BundleInstall +qall
