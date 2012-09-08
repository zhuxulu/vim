set nocompatible "关闭vi兼容模式
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'TxtBrowser'
Bundle 'tpope/vim-markdown'
filetype plugin indent on "检测文件插件类型

set guifont=Monaco\ for\ Powerline:h13 "字体
let g:Powerline_symbols = 'fancy' "Powerline风格
set background=dark
colorscheme solarized "配色
syntax on "语法高亮
set go-=T "关闭菜单工具栏
set guioptions+=br "水平垂直滚动条
set mouse=a "使用鼠标
set autochdir "自动切换当前文件所在目录
set nobackup "不备份
set noswapfile
set title "显示文件名
set number "显示行号
set ruler "右下角显示光标位置
set showcmd "显示输入的命令
set cmdheight=1 "命令行行数为1
set laststatus=2 "显示状态栏
set scrolloff=7 "上下可视行数
set cursorline "突出显示当前行
set nowrap "不自动换行
set tabstop=4 "tab制表符4
set softtabstop=4 "退格键一次删除4个空格
set expandtab "将tab展开为空格
set shiftwidth=4 "缩进为4
set autoindent
set smartindent
set cindent "使用C语言的规则自动缩进
set foldenable "代码折叠
set foldmethod=marker
set showmatch "匹配括号
set incsearch "实时匹配搜索内容
set hlsearch "高亮显示搜索的内容
set ignorecase "搜索忽略大小写
set history=1024 "记录历史的数量
set backspace=2 "退格键可用
set list "显示Tab符，用高亮竖线代替
set listchars=tab:\|\ 
set confirm "处理未保存或者只读文件时，弹出提示
set showtabline=2 "多标签
set autoread "文件被修改时自动读取

" 自动完成括号和引号
inoremap <leader>1 ()<esc>:let leavechar=")"<cr>i
inoremap <leader>2 []<esc>:let leavechar="]"<cr>i
inoremap <leader>3 {}<esc>:let leavechar="}"<cr>i
inoremap <leader>4 {<esc>o}<esc>:let leavechar="}"<cr>O
inoremap <leader>q ''<esc>:let leavechar="'"<cr>i
inoremap <leader>w ""<esc>:let leavechar='"'<cr>i

"文本文件语法高亮
au BufEnter *.txt setlocal ft=txt

"编码设置
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
language messages zh_CN.utf-8
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/delmenu.vim

" 窗口切换
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Buffers/Tab操作快捷方式!
nnoremap <s-h> :bprevious<cr>
nnoremap <s-l> :bnext<cr>
nnoremap <s-j> :tabnext<cr>
nnoremap <s-k> :tabprev<cr>

" 插入模式下上下左右移动光标
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <c-o>gj
inoremap <c-k> <c-o>gk

"技巧
"q: || Ctrl+F 查看历史命令

