"=============================================
"Author:hominlinx
"Version:1.1
"Email:hominlinx@gmail.com
"=============================================

" 修改主题和颜色展示
colorscheme molokai
set background=dark
set t_Co=256
"colorscheme solarized
"set background=dark
"set t_Co=256

" 定义自动命令，如果每次vim打开时没有指定打开文件，则启用NERDTree
 autocmd vimenter * if !argc() | NERDTree | endif
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


