"=============================================
"Author:hominlinx
"Version:1.1
"Email:hominlinx@gmail.com
"=============================================

set encoding=utf-8

"开启语法高亮
syntax enable
syntax on

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set helplang=cn
" 文件类型检测/允许加载文件类型插件/为不同类型的文件定义不同的缩进格式
filetype plugin indent on


" color scheme
"set background=dark
"set guifont=Monaco\ h9


" 取消备份。
set nobackup
set noswapfile

" 突出显示当前行等
set cursorcolumn
set cursorline " 突出显示当前行

"- 则点击光标不会换,用于复制
"set mouse =a
set mouse -=a "鼠标暂不启动

"设置文内智能搜索提示
" 高亮search命中的文本。
set hlsearch
" 搜索时忽略大小写
set ignorecase
" 随着键入即时搜索
set incsearch
" 有一个或以上大写字母时仍大小写敏感
set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise

set history=1000
set nocompatible "关闭vi一致性模式
set confirm " 在处理未保存或只读文件时，弹出确认
set backspace=indent,eol,start " More powerful backspacing
set report=0 " always report number of lines changed "
set wrap " do wrap lines
set scrolloff=5 " 5 lines above/below cursor when scrolling
set number " show line numbers
set showmatch " 括号配对情况
set showmode  " set showmode
set showcmd " show typed command in status bar
set title " show file in titlebar
set laststatus=2 " use 2 lines for the status bar
set matchtime=2 " show matching bracket for 0.2 seconds
" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai

set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set cino=:0g0t0(sus

