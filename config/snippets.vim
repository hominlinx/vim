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
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange


" settings for kien/rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set hidden "in order to switch between buffers with unsaved change 
map <c-n> :bp<cr>
map <c-p> :bn<cr>
map ,bd :bd<cr>"


"重新打开回到上次所编辑文件的位置
" if this not work ,make sure .viminfo is writable for you
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

