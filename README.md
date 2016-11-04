    cd 
    git clone git://github.com/zhuxulu/vim.git
    ln -sfn vim ~/.vim
    ln -sfn vim/vimrc ~/.vimrc
    cd vim

    git clone https://github.com/gmarik/vundle.git bundle/vundle

    :BundleInstall #安装插件

    :PluginClean #清理未安装的插件

    安装字体：https://github.com/powerline/fonts
