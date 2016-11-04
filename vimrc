set nocompatible "关闭vi兼容模式
filetype off
filetype plugin indent on "检测文件插件类型

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Yggdroot/indentLine'
Bundle 'ntpeters/vim-better-whitespace'

set background=dark
colorscheme solarized "配色
syntax on "语法高亮
winpos 0 0 "窗口位置
set guioptions-=e
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=B
set guioptions-=0
set go=
set lines=70 columns=150
set guioptions+=br "水平垂直滚动条
set mouse=a "使用鼠标
set autochdir "自动切换当前文件所在目录
set nobackup "不备份
set noswapfile
set nowritebackup
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
set list "显示Tab和空格
set lcs=tab:\|\ "tab用竖线代替
set confirm "处理未保存或者只读文件时，弹出提示
set showtabline=2 "多标签
set autoread "文件被修改时自动读
set completeopt=longest,menu
set hidden "允许在有未保存的修改时切换缓冲区
"修改vsplit分割线样式为竖线
hi vertsplit guifg=fg guibg=bg
set fillchars+=vert:\|

"复制粘贴
vmap <C-c> "+y
vmap <C-v> "+p
imap <C-v> <ESC>"+pa

"全选
imap <C-a> gg<S-v><S-g>
nmap <C-a> gg<S-v><S-g>
vmap <C-a> gg<S-v><S-g>

"粘贴时不替换剪切板
xnoremap p pgvy

"保存并返回到插入模式/ESC映射
imap jj <ESC>:w<CR>li
imap kk <ESC>l

"编码设置
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
language messages zh_CN.utf-8
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/delmenu.vim

"窗口切换
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

"Buffer操作
nnoremap <s-h> :bprevious<cr>
nnoremap <s-l> :bnext<cr>

"Tab操作
nnoremap <s-j> :tabnext<cr>
nnoremap <s-k> :tabprev<cr>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-w>   <Esc>:tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-w>   <Esc>:tabclose<CR>

"插入模式下上下左右移动光标
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <c-o>gj
inoremap <c-k> <c-o>gk

"indentline
let g:indentLine_char = '┆'

"airline
set guifont=Sauce\ Code\ Powerline:h10 "字体
let g:airline_powerline_fonts = 1
"let g:airline#extensions#whitespace#enabled = 0


"技巧
"q: || Ctrl+F 查看历史命令

"Tab替换成空格 :set ts=4 :set expandtab :%retab!
"空格替换成Tab :set ts=4 :set noexpandtab :%retab!

"将行尾多余空格删除 :%s/\s*$//ge

"去掉Windows下的文件行末^M, %s/\r// 或者 %s/ctrl+C ctrl+M//g

"转化文件格式 :set ff=unix/dos
"强制转换 au BuffWriter *.* :set fileformat=unix

"查看寄存器 :reg
"
"复制 yy：复制一行
"复制到系统剪切板 v键进入块模式 “+y 复制 “+p 粘贴

